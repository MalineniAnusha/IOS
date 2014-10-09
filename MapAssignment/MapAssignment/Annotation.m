//
//  Annotation.m
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation
-(id)initWithTitle:(NSString *)title AlsoSubtitle:(NSString *)subtitle AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    _title = title;
    _subtitle=subtitle;
    _coordinate = coordinate;
    
    return self;

}



@end
