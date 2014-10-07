//
//  DetailsTableViewController.m
//  Json+Coredata
//
//  Created by mac mini on 10/6/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "DetailsTableViewController.h"
#import "AppDelegate.h"
#import "JsonTable.h"
#import "SingletonObject.h"

@interface DetailsTableViewController ()
{
    AppDelegate *appDelegate;
    NSMutableArray *array;
    NSMutableDictionary *dict1;
    NSString *key;
    NSString *value;
}

@end

@implementation DetailsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
    UIBarButtonItem *barbutton=[[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonSystemItemAdd target:self action:@selector(buttonClicked)];
    
    //barbutton.style=UIBarButtonSystemItemAdd;
    
    
    self.navigationItem.rightBarButtonItem=barbutton;
    
   appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
   _managedObjectContext  = [appDelegate managedObjectContext];
    
    _fetchResultsController = [self goToFetchResultController];
    SingletonObject *singleObj=[SingletonObject sharedJson];
    //[[singleObj sharedJson]  jsonParsing];
     [singleObj jsonParsing];
    
   
    NSError *error=nil;
    
   [_fetchResultsController performFetch:&error];
   [_managedObjectContext save:&error];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if ([[_fetchResultsController sections]count]>0) {
                return self.fetchResultsController.sections.count;
    }
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    id <NSFetchedResultsSectionInfo> sectionInfo=[[_fetchResultsController sections] objectAtIndex:section];
       return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    JsonTable *tableref = [_fetchResultsController objectAtIndexPath:indexPath];
   
    cell.textLabel.text =tableref.key;
    //cell.detailTextLabel.text =tableref.value;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
       
        
        NSManagedObject *managedObject = [_fetchResultsController objectAtIndexPath:indexPath];
        [self.managedObjectContext deleteObject:managedObject];
        [self.managedObjectContext save:nil];
        
        NSError *error = nil;
        [_fetchResultsController performFetch:&error];
        
        [self.tableView endUpdates];
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath{
    
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
            
            break;
        case NSFetchedResultsChangeUpdate:
            if (newIndexPath==nil) {
                [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:UITableViewRowAnimationNone];
            }
            else{
                
                [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
                
                [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationNone];
            }
            
            break;
        case NSFetchedResultsChangeMove:
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
            
            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            
            break;
            
    }
    
}

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller{
    
    [self.tableView beginUpdates];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller{
    
    [self.tableView endUpdates];
    
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UpdateViewController *update = [[UpdateViewController alloc] initWithNibName:@"UpdateViewController" bundle:nil];
    NSIndexPath *selectedIndexPath=[self.tableView indexPathForSelectedRow];
   update.selected=[_fetchResultsController objectAtIndexPath:selectedIndexPath];
    [self.navigationController pushViewController:update animated:YES];
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1) {
        JsonTable *json = [NSEntityDescription insertNewObjectForEntityForName:@"JsonTable"inManagedObjectContext:_managedObjectContext];
        
        json.key = [alertView textFieldAtIndex:0].text;
        json.value = [alertView textFieldAtIndex:1].text;
        NSError *error = nil;
        [_managedObjectContext save:&error];
        
    }
}

-(void)buttonClicked
{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Update" message:@"Insert Details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [[alertView textFieldAtIndex:1] setSecureTextEntry:NO];
    [alertView show];
}

@end
