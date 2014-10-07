//
//  UpdateViewController.m
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "UpdateViewController.h"
#import "AppDelegate.h"
#import "DetailsTableViewController.h"

@interface UpdateViewController ()
{
     AppDelegate *appDelegate;
}

@end

@implementation UpdateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _keyTF.text=_selected.key;
    _valueTF.text=_selected.value;
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    _managedObjectContext  = [appDelegate managedObjectContext];
    _fetchResultsController = [self goToFetchResultController];
    NSError *error=nil;
    [_fetchResultsController performFetch:&error];
    [_managedObjectContext save:&error];

    
}
-(NSFetchedResultsController *)goToFetchResultController
{
    if(self.fetchResultsController!= nil)
    {
        return self.fetchResultsController;
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"JsonTable" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSSortDescriptor *sortDesc = [NSSortDescriptor sortDescriptorWithKey:@"key" ascending:YES];
    NSArray *sortArray = [[NSArray alloc] initWithObjects:sortDesc, nil];
    [fetchRequest setSortDescriptors:sortArray];
    
    
    NSFetchedResultsController *fetchResult = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:_managedObjectContext sectionNameKeyPath:nil cacheName:nil];
    _fetchResultsController = fetchResult;
    _fetchResultsController.delegate = self;
    return self.fetchResultsController;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
