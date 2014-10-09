//
//  ViewController.m
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"
#import "DetailObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LoadMap];
    [self CoreLocation];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)LoadMap
{
    _mapViewOutlet=[[MKMapView alloc] initWithFrame:self.view.bounds];
    _mapViewOutlet.mapType=MKMapTypeHybrid;
    _mapViewOutlet.delegate = self;
    [self.view addSubview:_mapViewOutlet];
}
-(void)CoreLocation
{
    if([CLLocationManager locationServicesEnabled])
    {
        _locationManager=[[CLLocationManager alloc]init];
        
        _locationManager.startUpdatingLocation;
        _locationManager.delegate=self;
    }
    else
    {
        NSLog(@"Coonection Failed");
    }
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    float  latitude=17.8017;
    float  longitude=83.3533;
    _mapViewOutlet.showsUserLocation=YES;
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = (double)latitude;
    coordinate.longitude = (double)longitude;
    Annotation *annotation = [[Annotation alloc] initWithTitle:@"Madhurawada" AlsoSubtitle:@"Visakhapatnam" AndCoordinate:coordinate];
    
    [_mapViewOutlet addAnnotation:annotation];
    
    _geoCoder = [[CLGeocoder alloc]init];
    
    [_geoCoder reverseGeocodeLocation:[[CLLocation alloc]initWithLatitude:latitude longitude:longitude] completionHandler:^(NSArray *placemarks, NSError *error) {
        
        CLPlacemark *placemark=[placemarks objectAtIndex:0];
        //NSLog(@"Place %@",[placemarks objectAtIndex:0]);
        NSLog(@"LOcality %@",placemark.subLocality);
         NSLog(@"LOcality %@",placemark.name);
        NSLog(@"LOcality %@",placemark.locality);
        NSLog(@"Postal Code %@",placemark.postalCode);
     NSLog(@"Place Name %@",placemark.country);
        
        
    }];
    [_locationManager stopUpdatingLocation];

     }


- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    static NSString *identifier = @"RoutePinAnnotation";
    MKPinAnnotationView* pinView = [[MKPinAnnotationView alloc]
                                     initWithAnnotation:annotation reuseIdentifier:identifier];
    pinView.animatesDrop=YES;
    pinView.canShowCallout=YES;

    
    UIButton* rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 50)];
    rightButton.backgroundColor=[UIColor redColor];
    [rightButton setTitle:@"Click" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(buttonClicked)forControlEvents:UIControlEventTouchUpInside];
    pinView.rightCalloutAccessoryView = rightButton;
    return pinView;
    
}
-(void)buttonClicked
{
    float  latitude=17.8017;
    float  longitude=83.3533;
    
    
    _geoCoder = [[CLGeocoder alloc]init];
    
    [_geoCoder reverseGeocodeLocation:[[CLLocation alloc]initWithLatitude:latitude longitude:longitude] completionHandler:^(NSArray *placemarks, NSError *error) {
        
        CLPlacemark *placemark=[placemarks objectAtIndex:0];
        
        
        CLLocationCoordinate2D coordinate;
        coordinate.latitude = (double)latitude;
        coordinate.longitude = (double)longitude;
        
        UIStoryboard *stryBoard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]];
        DetailsViewController *detail =[stryBoard instantiateViewControllerWithIdentifier:@"detailview"];
        DetailObject *obj=[[DetailObject alloc]init];
        obj.subLocality=[placemark subLocality];
        obj.nameTF=[placemark name];
        obj.localityTF=[placemark locality];
        obj.postalTF=[placemark postalCode];
        obj.placeTF=[placemark country];
        detail.detObj=obj;
     [self.navigationController pushViewController:detail animated:YES];

    }];
    

}
@end
