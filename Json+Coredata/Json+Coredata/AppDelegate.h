//
//  AppDelegate.h
//  Json+Coredata
//
//  Created by mac mini on 10/6/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailsTableViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
