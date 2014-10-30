//
//  ShareSettings.m
//  ContainerView
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//


#import "ShareSettings.h"
@implementation ShareSettings
+ (id)sharedSettings
{
    static id shareSettings = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareSettings = [[self alloc] init];
    });
    return shareSettings;
}
@end