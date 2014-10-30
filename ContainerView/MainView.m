//
//  MainView.m
//  ContainerView
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "MainView.h"

@interface MainView ()

@end

@implementation MainView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)profileButtonClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Profile" object:nil];
    
}

- (IBAction)menuButtonClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"menu" object:nil];
}
@end
