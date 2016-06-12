//
//  ViewController.m
//  MultiThreadingDemo
//
//  Created by Varun on 12/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ImageViewController *VC = [segue destinationViewController];
    
    VC.imageURL = @"http://www.nowyouknowfacts.com/wp-content/uploads/2015/01/SteveJobsCloseUp.jpeg";
}
@end
