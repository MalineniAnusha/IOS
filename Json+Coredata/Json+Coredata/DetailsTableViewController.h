//
//  DetailsTableViewController.h
//  Json+Coredata
//
//  Created by mac mini on 10/6/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "UpdateViewController.h"

@interface DetailsTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource,NSFetchedResultsControllerDelegate,UIAlertViewDelegate>
@property(nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property(nonatomic,strong) NSFetchedResultsController *fetchResultsController;
@property (strong, nonatomic) IBOutlet UITableView *tableViewOutlet;


@end
