//
//  MyCustomView.m
//  customViews
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "MyCustomView.h"

@implementation MyCustomView
@synthesize xConstraint;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

-(void) showMenuView {
    xConstraint.constant = 0;
}

-(void) hideMenuView {
    xConstraint.constant = - self.frame.size.width;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
