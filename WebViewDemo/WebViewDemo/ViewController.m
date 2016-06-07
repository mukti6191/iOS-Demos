//
//  ViewController.m
//  WebViewDemo
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

//    [myWebView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.codekul.com"]]];
    
    NSString *strHtml = @"<html><head></head><body>Hello World</body> </html>";
    
    [myWebView loadHTMLString:strHtml baseURL:nil];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [loadingView startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [loadingView stopAnimating];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error {
    [loadingView stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goClicked:(UIButton *)btn
{
    [txtUrl resignFirstResponder];
    NSString *requestURL = [self getURLForWebView:txtUrl.text];
    if (requestURL.length != 0) {
            [myWebView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:requestURL]]];
    }
}

-(NSString *)getURLForWebView:(NSString *)urlString {
    if (![urlString containsString:@"http://"]) {
        return [[NSString alloc] initWithFormat:@"http://@%@",urlString];
    }
    return @"";
}
@end
