//
//  MenuView.m
//  ContainerView
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "MenuView.h"

@interface MenuView ()

@end

@implementation MenuView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuButtonClicked:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"profile" object:nil];
}
- (IBAction)profileButtonClicked:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"menu" object:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
