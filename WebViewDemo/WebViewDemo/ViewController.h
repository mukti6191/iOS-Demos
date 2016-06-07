//
//  ViewController.h
//  WebViewDemo
//
//  Created by Umesh on 05/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView *myWebView;
    IBOutlet UIActivityIndicatorView *loadingView;
    IBOutlet UITextField *txtUrl;
}

-(IBAction)goClicked:(UIButton *)btn;
@end

