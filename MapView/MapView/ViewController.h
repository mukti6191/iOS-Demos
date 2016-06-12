//
//  ViewController.h
//  MapView
//
//  Created by Varun on 10/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>
{
    IBOutlet MKMapView *myMapView;
}

@end

