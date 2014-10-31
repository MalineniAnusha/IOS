//
//  ViewController.m
//  Blocks
//
//  Created by mac mini on 10/31/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UILabel *label;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     label= [[UILabel alloc]initWithFrame:CGRectMake(20, 60, 60, 60)];
    [label setText:@"Animation"];
    
    label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:label];
    
    [self sampleExecution];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)sampleExecution
{
    void(^sampleBlock)(void) = ^{
        [UILabel animateWithDuration:4 animations:^
         {
             label.frame= CGRectMake(100, 100, 100, 100);
         }
                          completion:nil];
    };
    
    sampleBlock();
    

}


@end
