//
//  addTransactionViewController.h
//  Transactions
//
//  Created by pcs20 on 9/17/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol gotoTransactionsList <NSObject>

@required
-(void)addTransactionToList:(NSString *)amount secondParameter:(NSString *)description;

@end


@interface addTransactionViewController : UIViewController<UITextFieldDelegate>

@property(nonatomic,strong)IBOutlet UIButton *DoneButton;
@property(nonatomic,strong)IBOutlet UITextField *amountTextField;
@property(nonatomic,strong)IBOutlet UITextField *descriptionTextField;
@property(nonatomic,weak)id<gotoTransactionsList>delegate;

-(IBAction)DoneClicked:(id)sender;


@end
