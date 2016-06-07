//
//  ViewController.m
//  LocalNotificationsDemo
//
//  Created by Umesh on 06/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)okayButtonClicked:(UIButton *)sender {
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:7];
    notification.alertBody = @"This is local notification!";
    notification.userInfo = @{@"Text":@"This is local notification!"};
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.soundName = UILocalNotificationDefaultSoundName;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
