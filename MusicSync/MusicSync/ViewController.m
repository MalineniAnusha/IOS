//
//  ViewController.m
//  MusicSync
//
//  Created by mac mini on 10/10/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    [label1 setText:@"Song 1"];
    [self.view addSubview:label1];
	
    UIButton *play1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [play1 setFrame:CGRectMake(40, 80, 100, 100)];
    [play1 setTitle:@"PLAY" forState:UIControlStateNormal];
    [play1 addTarget:self action:@selector(play1Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:play1];

    UIButton *pause1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pause1 setFrame:CGRectMake(150, 80, 100, 100)];
    [pause1 setTitle:@"PAUSE" forState:UIControlStateNormal];
    [pause1 addTarget:self action:@selector(pause1Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pause1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(20, 140, 100, 100)];
    [label2 setText:@"Song 2"];
    [self.view addSubview:label2];
    
    UIButton *play2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [play2 setFrame:CGRectMake(40, 200, 100, 100)];
    [play2 setTitle:@"PLAY" forState:UIControlStateNormal];
    [play2 addTarget:self action:@selector(play2Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:play2];
    
    UIButton *pause2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pause2 setFrame:CGRectMake(150, 200, 100, 100)];
    [pause2 setTitle:@"PAUSE" forState:UIControlStateNormal];
    [pause2 addTarget:self action:@selector(pause2Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pause2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)play1Action
{
    AppDelegate *appdel1=[[UIApplication sharedApplication]delegate];
    appdel1.player1.delegate=self;
    [appdel1.player2 stop];
    [appdel1.player1 play];
}


-(void)pause1Action
{
    AppDelegate *appdel1=[[UIApplication sharedApplication]delegate];
    [appdel1.player1 pause];
    
}
-(void)play2Action
{
    AppDelegate *appdel2=[[UIApplication sharedApplication]delegate];
    appdel2.player2.delegate=self;
    [appdel2.player1 stop];
    [appdel2.player2 play];
}


-(void)pause2Action
{
    
    AppDelegate *appdel2=[[UIApplication sharedApplication]delegate];
    [appdel2.player2 pause];
}
@end
