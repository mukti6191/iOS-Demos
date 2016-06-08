//
//  CustomCell.m
//  WebServices
//
//  Created by Varun on 08/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

-(void)SetData:(NSString *) city withPostalCode :(NSString *)postal{
    cityName.text = city;
    postalCode.text = postal;
}

@end
