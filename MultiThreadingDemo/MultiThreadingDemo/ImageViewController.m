//
//  ImageViewController.m
//  MultiThreadingDemo
//
//  Created by Varun on 12/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()
{
    IBOutlet UIImageView *myImageView;
    
    UIImage *myImage;
}
@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)setImageURL:(NSString *)imageURL {
    
    _imageURL = imageURL;
    
//    dispatch_queue_t myQueue = dispatch_queue_create("myQueue", NULL);
    
//    dispatch_async(myQueue, ^{
//        [self downloadImage];
//    });
    
    NSOperationQueue *myQueue = [NSOperationQueue new];

    [myQueue addOperationWithBlock:^{
        [self downloadImage];
    }];
}

-(void) downloadImage {
    myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_imageURL]]];
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self setImageToImageView];
//    });
    
    NSOperationQueue *myQueue = [NSOperationQueue mainQueue];
    
    [myQueue addOperationWithBlock:^{
        [self setImageToImageView];
    }];

}

-(void) setImageToImageView {
    myImageView.image = myImage;
}
@end
