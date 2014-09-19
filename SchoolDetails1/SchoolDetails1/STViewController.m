//
//  STViewController.m
//  SchoolDetails1
//
//  Created by Paradigm Creatives on 9/15/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "STViewController.h"

@interface STViewController ()

@end

@implementation STViewController

NSArray *recipes;
NSArray *subrecipes1;
NSArray *subrecipes2;
NSArray *subrecipes3;
int val=7;


- (void)viewDidLoad
{
    [super viewDidLoad];
    recipes = [NSArray arrayWithObjects:@"class1",@"class2",@"class3", nil];
    
    subrecipes1 = [NSArray arrayWithObjects:@"vamsi", @"manogna", @"anusha", @"sriramana", @"harikrishna", @"shivajee", nil];
    subrecipes2 = [NSArray arrayWithObjects:@"vamsi", @"manogna", @"anusha", @"sriramana", @"harikrishna", @"shivajee", nil];
    subrecipes3 = [NSArray arrayWithObjects:@"vamsi", @"manogna", @"anusha", @"sriramana", @"harikrishna", @"shivajee", nil];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    

  
//    if(val!=section)
//    {
//
//
//    }
    
      if(val==0)
        {
          return [recipes count];
        }
        else if(val==1)
        {
          return [recipes count];
        }
        else
        {
          return [recipes count];
        }
    return section;
    }
    

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        }
    if(cell==0)
    {
       cell.textLabel.text = [subrecipes1 objectAtIndex:indexPath.row];
    }
    else if(cell==1)
    {
       cell.textLabel.text = [subrecipes2 objectAtIndex:indexPath.row];
    }
    else
    {
        cell.textLabel.text = [subrecipes3 objectAtIndex:indexPath.row];
    }
    
    val=indexPath.row;
    //cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    [view setBackgroundColor:[UIColor redColor]];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom ];
    [button setTag:section];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:[NSString stringWithFormat:@" %d",section]  forState:UIControlStateNormal];
    [button setFrame:CGRectMake(250, 0, 100, 20)];
    [view addSubview:button];kk
    
    return view;
}


@end
