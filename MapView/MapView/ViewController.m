//
//  ViewController.m
//  MapView
//
//  Created by Varun on 10/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"
#import "MyAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(18.5204, 73.8567);
    MyAnnotation *annotation = [[MyAnnotation alloc] initWithTitle:@"Pin1 sgdjygdjygsj jyjsy wdcsawdf rg wrgwg eg egcw  w dwd  w d " AndCoordinate:coord];
    
    [myMapView addAnnotation:annotation];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
}

-(void)mapViewDidFinishRenderingMap:(MKMapView *)mapView fullyRendered:(BOOL)fullyRendered {
    
    if (fullyRendered) {
        CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(18.5204, 73.8567);
        [myMapView setRegion:MKCoordinateRegionMake(coord, MKCoordinateSpanMake(0.3, 0.3)) animated:YES];
    }
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
