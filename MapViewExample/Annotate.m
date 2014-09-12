//
//  Annotate.m
//  MapViewExample
//
//  Created by Paradigm Creatives on 9/12/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "Annotate.h"

@implementation Annotate
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
