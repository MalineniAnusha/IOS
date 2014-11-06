//
//  ViewController.m
//  DelegateSample
//
//  Created by mac mini on 9/30/14.
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
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_nameTF resignFirstResponder];
    [_passTF resignFirstResponder];
    return YES;
}
-(void)delegateFunction:(NSString *)textfield;
{
    self.nameTF.text=textfield;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"pushToSecond"])
    {
        SecondViewController *second=[segue destinationViewController];
        second.delegateObject=self;
    }
}
@end
