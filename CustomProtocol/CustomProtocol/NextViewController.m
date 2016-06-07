//
//  NextViewController.m
//  CustomProtocol
//
//  Created by Varun on 07/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "NextViewController.h"

@implementation NextViewController


-(void) processedData:(NSString *)str {
    lbl.text = str;
    
    self.view.backgroundColor = [UIColor blueColor];
}

@end
