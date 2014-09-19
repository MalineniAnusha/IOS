//
//  addTransactionViewController.m
//  Transactions
//
//  Created by pcs20 on 9/17/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "addTransactionViewController.h"
#import "transactionsViewController.h"

@interface addTransactionViewController ()

@end

@implementation addTransactionViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"Hello dear");
 
 
}
*/



- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    [_amountTextField resignFirstResponder];
    return YES;
}


-(IBAction)DoneClicked:(id)sender{

      
    
    
    [self.delegate addTransactionToList:_amountTextField.text secondParameter:_descriptionTextField.text];
    
    [self.navigationController popViewControllerAnimated:YES];


}


@end
