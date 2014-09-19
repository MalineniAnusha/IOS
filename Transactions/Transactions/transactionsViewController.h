//
//  transactionsViewController.h
//  Transactions
//
//  Created by pcs20 on 9/17/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addTransactionViewController.h"

@interface transactionsViewController : UITableViewController<gotoTransactionsList>

@property(nonatomic,strong)IBOutlet UIButton *addTransactionButton;




-(void)addTransactionToList:(NSString *)amount secondParameter:(NSString *)description;

@end
