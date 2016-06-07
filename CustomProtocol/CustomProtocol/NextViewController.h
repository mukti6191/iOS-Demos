//
//  NextViewController.h
//  CustomProtocol
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface NextViewController : UIViewController<NextVCDelegate>
{
    IBOutlet UILabel *lbl;
}

@end
