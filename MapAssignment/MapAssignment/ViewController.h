//
//  ViewController.h
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Annotation.h"


@interface ViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapViewOutlet;
@property(strong,nonatomic)CLLocationManager *locationManager;
@property(strong,nonatomic)CLGeocoder *geoCoder;

@end
