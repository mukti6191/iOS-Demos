//
//  ViewController.h
//  SocialDemo
//
//  Created by Varun on 11/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

@interface ViewController : UIViewController<GIDSignInUIDelegate>

@property (weak, nonatomic) IBOutlet GIDSignInButton *loginButton;

@end

