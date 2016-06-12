//
//  ViewController.h
//  WebserviceDemo
//
//  Created by Varun on 09/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,NSURLSessionDownloadDelegate>
{
    IBOutlet UILabel *lblPercentageDone;
    IBOutlet UIButton *button;
}

@end

