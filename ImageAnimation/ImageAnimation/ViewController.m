//
//  ViewController.m
//  ImageAnimation
//
//  Created by mac mini on 10/30/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *imageNames;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imageNames = @[@"1.jpeg",@"2.jpeg",@"3.jpeg",@"4.jpeg"];
    
    NSMutableArray *images = [[NSMutableArray alloc]init];
    for(int i=0 ; i<imageNames.count ;i++)
    {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 500, 500)];
    imageView.animationImages=images;
    imageView.animationDuration=5;
    
    [self.view addSubview:imageView];
    [imageView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
