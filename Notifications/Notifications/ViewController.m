//
//  ViewController.m
//  Notifications
//
//  Created by mac mini on 10/31/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *notificationName=@"Notification";
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(useNotification:) name:notificationName object:nil];
    [self postNotification:@"potrait"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)postNotification:(NSString *)orientation
{
    NSString *notificationName= @"Notification";
    NSString *key=@"OrientationValue";
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:orientation forKey:key];
    [[NSNotificationCenter defaultCenter]postNotificationName:notificationName object:self userInfo:dictionary];
}

- (void)useNotification:(NSNotification *)notification
{
    NSLog(@"Notification Received");
}
- (IBAction)buttonClicked:(id)sender {
    
    
}
@end
