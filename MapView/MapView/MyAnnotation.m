//
//  MyAnnotation.m
//  MapView
//
//  Created by Varun on 10/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate=_coordinate;

@synthesize title=_title;

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    _title = title;
    _coordinate = coordinate;
    
    return self;
}

@end
