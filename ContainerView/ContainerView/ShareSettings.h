//
//  ShareSettings.h
//  ContainerView
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareSettings : NSObject
@property (nonatomic) BOOL menuTapped;
@property (nonatomic) BOOL profileTapped;
+ (id)sharedSettings;
@end
