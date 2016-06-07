//
//  MyTableViewCell.h
//  BasicAutolayout
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
{
    IBOutlet UILabel *myLabel;
    IBOutlet UIImageView *myImageView;
}

-(void) setDataWithLable:(NSString *)labelText withColor:(UIColor *)color;
@end
