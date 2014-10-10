//
//  ViewController.m
//  MusicAssignment
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pauseAction:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate.player pause];
}

- (IBAction)playAction:(id)sender {
    AppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    appdelegate.player.delegate=self;
      [appdelegate.player1 stop];
       [appdelegate.player play];
    
}

- (IBAction)pause1:(id)sender {
    
    AppDelegate *appdel=[[UIApplication sharedApplication]delegate];
    [appdel.player1 pause];
}

- (IBAction)play1:(id)sender {
    
    AppDelegate *appdel=[[UIApplication sharedApplication]delegate];
    appdel.player1.delegate=self;
       [appdel.player stop];
    [appdel.player1 play];
}
@end
