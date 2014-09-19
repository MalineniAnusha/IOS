//
//  ScrollViewController.m
//  ScrollViewExample
//
//  Created by Paradigm Creatives on 9/12/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

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
    [self scrollviewcreation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)scrollviewcreation
{
    self.scrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 30, 300,100)];
    [_scrollview  setContentSize:CGSizeMake(500,500)];
    [self.view addSubview:_scrollview];
    _scrollview.backgroundColor = [UIColor blueColor];
    
    
    
   /* int x=10 , y=5;
    for(int i=0 ; i<10 ; i++)
    {
        
        UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0,30, 100, 100)];
        UILabel *label = [[UILabel alloc]init];
        [view addSubview:label];
        [label setText: [NSString stringWithFormat:@"%d",i]];
         [self.scrollview  addSubview:view];
    
        x=x+view.frame.size.width +10;
    
    }*/
    //[self.scrollview setContentSize:cgrect];
    
    
    
    
    
}

@end
