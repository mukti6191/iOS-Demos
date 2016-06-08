//
//  ViewController.h
//  WebServices
//
//  Created by Varun on 08/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,NSXMLParserDelegate>
{
    IBOutlet UITableView *myTableView;
}


@end

