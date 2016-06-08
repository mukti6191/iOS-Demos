//
//  CustomCell.h
//  WebServices
//
//  Created by Varun on 08/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *cityName;
    IBOutlet UILabel *postalCode;
}

-(void)SetData:(NSString *) city withPostalCode :(NSString *)postal;
@end
