//
//  MapViewController.m
//  MapViewExample
//
//  Created by Paradigm Creatives on 9/11/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "MapViewController.h"



@interface MapViewController ()

@end

@implementation MapViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     //_geo = [[CLGeocoder alloc] init];
    // Do any additional setup after loading the view from its nib.
    [self createmapview];
    [self getlocation];
    
    /*[_geo reverseGeocodeLocation:[[CLLocationManager alloc]initwithLatitude] completionHandler:^(NSArray *placemarks, NSError *error) {
        NSLog(@"Found placemarks: %@, error: %@", placemarks, error);
        if (error == nil && [placemarks count] > 0) {
            _placemark = [placemarks lastObject];
                        NSLog(@"postalcode is %@",_placemark.postalCode);
            NSLog(@"locality is %@", _placemark.locality);
            NSLog(@" country is %@", _placemark.country);
            NSLog(@"latitude is %@", _placemark.name);

        } else
        {
            NSLog(@"%@", error.debugDescription);
        }
    } ];*/
}
     


    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)createmapview
{
    _mapview = [[MKMapView alloc] initWithFrame:self.view.bounds];
    _mapview.mapType=MKMapTypeHybrid;
    [self.view addSubview: _mapview];
}
-(void)getlocation
{
 _location =[[CLLocationManager alloc] init];
  
   
    _location.delegate = self;
     [_location startUpdatingLocation];
    
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation

{
        NSLog(@"latitude is %f", newLocation.coordinate.latitude);
    NSLog(@" longitude is  %f", newLocation.coordinate.longitude);
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = (double)newLocation.coordinate.latitude;
    coordinate.longitude = (double)newLocation.coordinate.longitude;
    Annotate *anotation = [[Annotate alloc] initWithTitle:@"Mumbai" AndCoordinate:coordinate];
    [_mapview addAnnotation:anotation];
    
    _geo=[[CLGeocoder alloc] init];
   
    [_geo reverseGeocodeLocation:[[CLLocation alloc] initWithLatitude:newLocation.coordinate.latitude longitude:newLocation.coordinate.longitude] completionHandler:^(NSArray *placemarks, NSError *error) {
      
        

        CLPlacemark *placemark=[placemarks objectAtIndex:0];
        NSLog(@"Place %@",[placemarks objectAtIndex:0]);
        NSLog(@"Place Name %@",placemark.country);
        NSLog(@"Region Name %@",placemark.region);
        

    
    }];
  
    [_location stopUpdatingLocation];


    
}



@end
