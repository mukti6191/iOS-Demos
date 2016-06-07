//
//  ViewController.h
//  CustomProtocol
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NextVCDelegate <NSObject>

@required

-(void) processedData:(NSString *) str;

@end

@interface ViewController : UIViewController
{
    IBOutlet UITextField *txt;
}

@property (nonatomic, weak) id<NextVCDelegate> myDelegate;

-(IBAction)btnClicked:(UIButton *)sender;
@end

