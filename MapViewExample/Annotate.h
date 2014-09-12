//
//  Annotate.h
//  MapViewExample
//
//  Created by Paradigm Creatives on 9/12/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotate : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *subtitle;

-(id) initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)coordinate;



@end
