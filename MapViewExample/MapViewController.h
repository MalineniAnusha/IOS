//
//  MapViewController.h
//  MapViewExample
//
//  Created by Paradigm Creatives on 9/11/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Annotate.h"

@interface MapViewController : UIViewController<CLLocationManagerDelegate>
@property(strong , nonatomic) MKMapView *mapview;
@property(strong , nonatomic) CLGeocoder  *geo;
@property(strong , nonatomic) CLPlacemark  *placemark;

@property(strong , nonatomic) CLLocation *loca;
@property(strong , nonatomic) CLLocationManager *location;

@end
