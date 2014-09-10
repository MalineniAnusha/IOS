//
//  ThirdViewController.m
//  TabBarController
//
//  Created by Paradigm Creatives on 9/10/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "ThirdViewController.h"
#import "DetailsViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
NSArray *data;

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
    data = [[NSArray alloc ]initWithObjects:@"Anusha", @"Manogna", @"Vamsi", @"Shivaji" , @"Ramana" , @"Hari" ,nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return[data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyCellIdentifier = @"MyCellIdentifier";
    
    UITableViewCell *cell = [self.thirdoutlet dequeueReusableCellWithIdentifier:MyCellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellIdentifier];
    }
    cell.textLabel.text=[data objectAtIndex:indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    DetailsViewController *detail = [[DetailsViewController alloc] initWithNibName:@"DetailsViewController" bundle:nil];
    //[self.navigationController pushViewController:detail animated:YES];
    
    
    switch (indexPath.row)
    {
        case 0: detail.name = [data objectAtIndex:0];
            break;
            
        case 1: detail.name = [data objectAtIndex:1];
            break;
            
        case 2: detail.name = [data objectAtIndex:2];
            break;
            
        case 3: detail.name = [data objectAtIndex:3];
            break;
            
        case 4: detail.name = [data objectAtIndex:4];
            break;
            
        case 5: detail.name = [data objectAtIndex:5];
            break;
            
        default : NSLog(@"no access");
    }
    [self.navigationController pushViewController:detail animated:YES];
}



@end
