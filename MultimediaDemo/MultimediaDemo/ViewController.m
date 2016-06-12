//
//  ViewController.m
//  MultimediaDemo
//
//  Created by Varun on 12/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *myTimer;
    
    IBOutlet UISlider *mySlider;
    
    IBOutlet UILabel *lblTitle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Jag Ghoomeya" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];

    myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(setSlider:) userInfo:nil repeats:YES];
}

-(IBAction)playAudio:(id)sender {
    
    [audioPlayer play];
    
    
    AVURLAsset *assest = [AVURLAsset assetWithURL:[audioPlayer url]];
    
    AVMetadataItem *song = [[assest commonMetadata] firstObject];
    
    lblTitle.text = [NSString stringWithFormat:@"%@",song.value];
    
    mySlider.minimumValue = 0;
    mySlider.maximumValue = audioPlayer.duration;
}

-(IBAction)pauseAudio:(id)sender {
    
    [audioPlayer pause];
    
    [myTimer invalidate];
}

-(IBAction)stopAudio:(id)sender {
    
    [audioPlayer stop];
    [myTimer invalidate];

}

-(IBAction)playVideo:(id)sender{
    
    if (audioPlayer.isPlaying) {
        [audioPlayer stop];
        [myTimer invalidate];
    }
    // grab a local URL to our video
    NSURL *videoURL = [[NSBundle mainBundle]URLForResource:@"zing zing zingat full video song" withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    // create a player view controller
    moviewController = [[AVPlayerViewController alloc]init];
    moviewController.player = player;
    [player play];
    
    // show the view controller
    [self addChildViewController:moviewController];
    [self.view addSubview:moviewController.view];
    moviewController.view.frame = CGRectMake(0, 0, 100, 100);
}

-(IBAction)sliderValueChanged:(id)sender{

    audioPlayer.currentTime = mySlider.value;
    
}

-(void) setSlider:(NSTimer *)timer {
    mySlider.value = audioPlayer.currentTime;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
