//
//  ViewController.m
//  customViews
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL isMenuOpen;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myCustomView.xConstraint = xConstraintForMenuView;
    isMenuOpen = NO;
}

-

-(IBAction)menuButtonClicked:(id)sender {
    if (isMenuOpen) {
        [myCustomView hideMenuView];
        isMenuOpen = NO;
    }
    else {
        [myCustomView showMenuView];
        isMenuOpen = YES;
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
