//
//  MyTableViewController.h
//  BasicAutolayout
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *myTableView;
}
@end
