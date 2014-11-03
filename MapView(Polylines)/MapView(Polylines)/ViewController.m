//
//  ViewController.m
//  MapView(Polylines)
//
//  Created by mac mini on 11/3/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

MKPointAnnotation *annotation;
MKPointAnnotation *annotation1;
MKPointAnnotation *annotation2;
MKPolyline *polyline;


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapview.delegate=self;
    _mapview.mapType=MKMapTypeHybrid;
    
    annotation = [[MKPointAnnotation alloc]init];
    annotation.coordinate = CLLocationCoordinate2DMake(17.8017, 83.3533);
    annotation.title=@"Madhurawada";
    annotation.subtitle=@"Visakhpatnam";
    [_mapview addAnnotation:annotation];
    
    
    annotation1 = [[MKPointAnnotation alloc]init];
    annotation1.coordinate = CLLocationCoordinate2DMake(17.4833, 78.4167);
    annotation1.title=@"Kukatpally";
    annotation1.subtitle=@"Hyderabad";
    [_mapview addAnnotation:annotation1];
    
    annotation2 = [[MKPointAnnotation alloc]init];
    annotation2.coordinate = CLLocationCoordinate2DMake(12.9738, 77.6119);
    annotation2.title=@"MG Road";
    annotation2.subtitle=@"Banglore";
    [_mapview addAnnotation:annotation2];
    
    CLLocationCoordinate2D path[3];
    path[0]=annotation.coordinate;
    path[1]=annotation1.coordinate;
    path[2]=annotation2.coordinate;
    
    
    polyline = [[MKPolyline alloc]init];
    polyline = [MKPolyline polylineWithCoordinates:path count:3];
    [_mapview addOverlay:polyline];
    
   
}


- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id <MKOverlay>)overlay
{
    if([overlay isKindOfClass:[MKPolyline class]])
    {
        MKPolylineRenderer *overLayRender = [[MKPolylineRenderer alloc] initWithOverlay:overlay];
        overLayRender.strokeColor     = [UIColor blueColor];
        overLayRender.lineWidth       = 5;
        return overLayRender;
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
