//
//  ViewController.h
//  customViews
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCustomView.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet MyCustomView *myCustomView;
    IBOutlet NSLayoutConstraint *xConstraintForMenuView;
}

@end

