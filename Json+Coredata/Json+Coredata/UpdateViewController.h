//
//  UpdateViewController.h
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JsonTable.h"
#import <CoreData/CoreData.h>

@interface UpdateViewController : UIViewController<NSFetchedResultsControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *keyTF;
@property (weak, nonatomic) IBOutlet UITextField *valueTF;
@property(nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property(nonatomic,strong) NSFetchedResultsController *fetchResultsController;
@property(nonatomic,strong)JsonTable *selected;
@end
