//
//  ViewController.m
//  UserDefaults
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addImage:(id)sender {
    NSUserDefaults *sample= [NSUserDefaults standardUserDefaults];
    [sample synchronize];
    [sample setValue:@"Anusha" forKey:@"Fname"];
    [sample setValue:@"Malineni" forKey:@"Lname"];
    [sample setValue:@"21" forKey:@"age"];
}

- (IBAction)saveButton:(id)sender {
    NSUserDefaults *sample1=[NSUserDefaults standardUserDefaults];
    _FirstNameTf.text=[sample1 objectForKey:@"Fname"];
    _LastNameTF.text=[sample1 objectForKey:@"Lname"];
    _ageTF.text=[sample1 objectForKey:@"age"];
    
}
@end
