//
//  MyCustomView.h
//  customViews
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

@property (nonatomic, strong) NSLayoutConstraint *xConstraint;

-(void) showMenuView;
-(void) hideMenuView;
@end
