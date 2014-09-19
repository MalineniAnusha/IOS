//
//  transactionsViewController.m
//  Transactions
//
//  Created by pcs20 on 9/17/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "transactionsViewController.h"
#import "addTransactionViewController.h"

@interface transactionsViewController ()

@end

@implementation transactionsViewController{

    NSMutableArray *amountArray;
     NSMutableArray *descriptionArray;

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    amountArray=[[NSMutableArray alloc] init];
    descriptionArray=[[NSMutableArray alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return amountArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Transaction"];
    
    
    
    
    // Configure the cell...
    cell.textLabel.text=[amountArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[descriptionArray objectAtIndex:indexPath.row];
    
    
    return cell;
}






-(void)addTransactionToList:(NSString *)amount secondParameter:(NSString *)description{
   

   
    [amountArray addObject:amount];
    [descriptionArray addObject:description];
    
    [self.tableView reloadData];
    
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"addTransaction"]) {
        addTransactionViewController *addTransaction=[segue destinationViewController];
        addTransaction.delegate=self;
    }

}

@end
