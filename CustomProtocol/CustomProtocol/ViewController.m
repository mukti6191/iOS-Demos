//
//  ViewController.m
//  CustomProtocol
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"
#import "NSString+MyString.h"
#include "MyNewString.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myDelegate;

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSString *string = [[NSString alloc] init];
//    [string showNowDate];
//    
//    MyNewString *newString = [[MyNewString alloc] init];
//    [newString showNewNowDate];


}

-(IBAction)btnClicked:(UIButton *)sender
{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"nextID"]) {
        NextViewController *VC = segue.destinationViewController;
        myDelegate = VC;
        
        [self performSelector:@selector(callDelegateMethod) withObject:nil afterDelay:10.0];
    }
}

-(void) callDelegateMethod {
    
    [myDelegate processedData:txt.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
