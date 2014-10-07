//
//  JsonTable.h
//  Json+Coredata
//
//  Created by mac mini on 10/6/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface JsonTable : NSManagedObject

@property (nonatomic, retain) NSString * key;
@property (nonatomic, retain) NSString * value;

@end