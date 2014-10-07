//
//  LoginViewController.m
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "LoginViewController.h"
#import "DetailsTableViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginClicked:(id)sender {
    if(_emailTF.text.length  == 0 && _passTF.text.length  != 0)
    {
        UIAlertView *emailAlert=[[UIAlertView alloc]initWithTitle:@"Email Alert" message:@"Enter email" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [emailAlert show];
        
    }
    if(_passTF.text.length  == 0 && _emailTF.text.length != 0)
    {
        UIAlertView *passwdAlert=[[UIAlertView alloc]initWithTitle:@"Password Alert" message:@"Enter password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [passwdAlert show];
        
    }
    if (_emailTF.text.length  == 0 && _passTF.text.length  == 0) {
        UIAlertView *loginAlert=[[UIAlertView alloc]initWithTitle:@"Login Alert" message:@"Enter details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [loginAlert show];
        
    }
    else if( _emailTF.text.length != 0 && _passTF.text.length  != 0)
    {
        UIAlertView *successAlert=[[UIAlertView alloc]initWithTitle:@"Validation Success" message:@"Welcome" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [successAlert show];
         DetailsTableViewController *details= [[DetailsTableViewController alloc]initWithNibName:@"DetailsTableViewController" bundle:nil];
        [self.navigationController pushViewController:details animated:YES];
        
    }

}
@end
