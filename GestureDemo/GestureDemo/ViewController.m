//
//  ViewController.m
//  GestureDemo
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view1Tapped:)];
    
    gestureRecognizer.numberOfTapsRequired = 2;
    [view1 addGestureRecognizer:gestureRecognizer];
     
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(view2RightSwipe:)];
    
    swipeGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [view2 addGestureRecognizer:swipeGesture];
    
    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(view3LongPressed:)];
    longPressGesture.minimumPressDuration = 3;
    [view1 addGestureRecognizer:longPressGesture];
    
    
    
}

-(void) view1Tapped:(UIGestureRecognizer *) gesture {
    self.view.backgroundColor = view1.backgroundColor;
}

-(void) view2RightSwipe:(UIGestureRecognizer *) gesture {
    self.view.backgroundColor = view2.backgroundColor;
}

-(void) view3LongPressed:(UIGestureRecognizer *) gesture {
    self.view.backgroundColor = view3.backgroundColor;
}

-(IBAction) view4Tapped:(UIGestureRecognizer *) gesture {
    self.view.backgroundColor = view4.backgroundColor;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
shouldRecognizeSimultaneouslyWithGestureRecognizer:
(UIGestureRecognizer *)otherGestureRecognizer

{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
