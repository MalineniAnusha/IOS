//
//  Annotation.h
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "DetailsViewController.h"

@interface Annotation : NSObject<MKAnnotation,MKMapViewDelegate>

@property(readonly, nonatomic) CLLocationCoordinate2D coordinate;
@property(nonatomic,readonly,copy)NSString *title;
@property(nonatomic,readonly,copy)NSString *subtitle;


-(id)initWithTitle:(NSString *)title AlsoSubtitle:(NSString *)subtitle AndCoordinate:(CLLocationCoordinate2D)coordinate;
@end
