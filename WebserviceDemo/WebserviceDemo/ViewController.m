//
//  ViewController.m
//  WebserviceDemo
//
//  Created by Varun on 09/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *arrData;
    NSURLSessionDownloadTask *downloadTask;
    BOOL isDownloading;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://api.geonames.org/findNearbyPostalCodesJSON?postalcode=8775&country=CH&radius=10&username=demo"]];
//    
//    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//        
//        NSLog(@"json: %@",json);
//        
//        arrData = [json valueForKey:@"postalCodes"];
//        
//        [myTableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
//
//    }];
//    [dataTask resume];
    
    arrData = [[NSArray alloc] init];
    
    NSURLSession *downloadSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:nil];
    
    downloadTask = [downloadSession downloadTaskWithRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://manuals.info.apple.com/MANUALS/1000/MA1565/en_US/iphone_user_guide.pdf"]]];
    isDownloading = NO;
    
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location {
    isDownloading = NO;
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
    
    double percent = totalBytesWritten/(double)totalBytesExpectedToWrite *100.0;
    
    NSString *str = [NSString stringWithFormat:@"%f %%",percent];

    [lblPercentageDone performSelectorOnMainThread:@selector(setText:) withObject:str waitUntilDone:NO];

}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
 didResumeAtOffset:(int64_t)fileOffset
expectedTotalBytes:(int64_t)expectedTotalBytes {
    isDownloading = YES;
    
}

-(IBAction)startPauseButtomClicked:(id)sender {
    
    if (isDownloading) {
        [downloadTask suspend];
        [button setTitle:@"Start" forState:UIControlStateNormal];
        isDownloading = NO;
    }
    else {
        [downloadTask resume];
        [button setTitle:@"Pause" forState:UIControlStateNormal];
        isDownloading = YES;
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrData.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [arrData[indexPath.row] valueForKey:@"placeName"];
    
    cell.detailTextLabel.text = [arrData[indexPath.row] valueForKey:@"postalCode"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
