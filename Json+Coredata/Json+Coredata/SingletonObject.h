//
//  SingletonObject.h
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface SingletonObject : NSObject<NSFetchedResultsControllerDelegate>
+(id)sharedJson;
-(void)jsonParsing;
@property(nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property(nonatomic,strong) NSFetchedResultsController *fetchResultsController;

@end
