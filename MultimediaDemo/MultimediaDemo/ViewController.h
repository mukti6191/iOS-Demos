//
//  ViewController.h
//  MultimediaDemo
//
//  Created by Varun on 12/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
    AVPlayerViewController *moviewController;
    
    NSTimeInterval currentPosition;
    
}

-(IBAction)playAudio:(id)sender;
-(IBAction)playVideo:(id)sender;


@end

