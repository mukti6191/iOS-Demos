//
//  MyTableViewCell.m
//  BasicAutolayout
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void) setDataWithLable:(NSString *)labelText withColor:(UIColor *)color
{
    myLabel.text = labelText;
    myImageView.backgroundColor = color;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
