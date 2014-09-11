//
//  PickerViewController.m
//  PickerExample
//
//  Created by Paradigm Creatives on 9/10/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

NSArray *statetList;
NSArray *aparray;
NSArray *telarray;
NSArray *varray;
NSArray *garray;
NSArray *karray;
NSArray *harray;
NSArray *aarray;
NSArray *v2array;
NSArray *districtArray;
NSArray *citiesArray;
int flag , flag1 , flag2;



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
    statetList = [[ NSArray  alloc]initWithObjects:@"AP",@"Telangana",nil];
     aparray = [[ NSArray  alloc]initWithObjects:@"Vizag",@"Vijayawada",@"guntur",nil];
    telarray = [[ NSArray  alloc]initWithObjects:@"Hyderabad",@"Adilabad",@"Kurnool",nil];
    varray = [[ NSArray  alloc]initWithObjects:@"Seethammadhara",@"MVP",@"gajuwaka",nil];
    garray = [[ NSArray  alloc]initWithObjects:@"X",@"Y",@"Z",nil];
    harray = [[NSArray alloc]initWithObjects:@"Narasanapeta",@"Rajam",@"Palasa", nil];
    aarray = [[NSArray alloc]initWithObjects:@"Nandhyala",@"Allipuram",@"Tirupathi", nil];
    karray = [[NSArray alloc]initWithObjects:@"Hanumakonda",@"Temple",@"Balaga", nil];
    v2array = [[ NSArray  alloc]initWithObjects:@"A",@"M",@"B",nil];

    districtArray=aparray;
    citiesArray=varray;
    
 

    }
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *title;
    if (component == 0)
        switch(row)
          {
        
        case 0: title= [statetList objectAtIndex:0];
            break;
       
        case 1: title= [statetList objectAtIndex:1];
            break;
            }
   
    
    if(component==1)
    {
        if(flag==0)
        switch(row)
        {
            case 0: title= [aparray objectAtIndex:0];
                break;
                
            case 1: title= [aparray objectAtIndex:1];
                break;
            case 2: title= [aparray objectAtIndex:2];
                break;
        }
        else if (flag==1)
           switch(row)
        {
            case 0: title= [telarray objectAtIndex:0];
                break;
                
            case 1: title= [telarray objectAtIndex:1];
                break;
            case 2: title= [telarray objectAtIndex:2];
                break;
                

        }
          
        
    }
    if(component==2)
    {
        if (flag==0)
        {
            if(flag1==0)
                switch(row)
            {
                case 0: title= [varray objectAtIndex:0];
                    break;
                    
                case 1: title= [varray objectAtIndex:1];
                    break;
                case 2: title= [varray objectAtIndex:2];
                    break;
                    
                    
                    
            }
            else if (flag1==1)
                switch(row)
            {
                case 0: title= [v2array objectAtIndex:0];
                    break;
                    
                case 1: title= [v2array objectAtIndex:1];
                    break;
                case 2: title= [v2array objectAtIndex:2];
                    break;
                    
                    
            }
            else if(flag1==2)
                switch(row)
            {
                case 0: title= [garray objectAtIndex:0];
                    break;
                    
                case 1: title= [garray objectAtIndex:1];
                    break;
                case 2: title= [garray objectAtIndex:2];
                    break;
                    
                    
            }

        }
        else
        {
            if(flag2==0)
                switch(row)
            {
                case 0: title= [harray objectAtIndex:0];
                    break;
                    
                case 1: title= [harray objectAtIndex:1];
                    break;
                case 2: title= [harray objectAtIndex:2];
                    break;
                    
                    
                    
            }
            else if (flag2==1)
                switch(row)
            {
                case 0: title= [aarray objectAtIndex:0];
                    break;
                    
                case 1: title= [aarray objectAtIndex:1];
                    break;
                case 2: title= [aarray objectAtIndex:2];
                    break;
                    
                    
            }
            else if(flag2==2)
                
                switch(row)
            {
                case 0: title= [karray objectAtIndex:0];
                    break;
                    
                case 1: title= [karray objectAtIndex:1];
                    break;
                case 2: title= [karray objectAtIndex:2];
                    break;
                    
                    
            }

        }
        
        
    }
    
    return title;
    //[picker reloadComponent:1];
    
    }
    
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if (component == 0)
    {
        return 3;
    }
    else if (component == 1)
    {
        return 5;
    }
    else if (component == 2)
    {
        return 6;
    }
    
    return 0;
}



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 4;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0)
        {
            if(row==0)
            {
                flag=0;
                [pickerView reloadComponent:component+1];
                [pickerView reloadComponent:component+2];

                
            }
            else
            {
                flag=1;
                [pickerView reloadComponent:component+1];
                [pickerView reloadComponent:component+2];

                

            }
        }
    if (component == 1)
    {
        if(row==0)
        {
            flag1=0;
            
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

            
        }
        else if(row==1)
        {
            flag1=1;
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

            
            
        }
        else
        {
            flag1=2;
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

            

        
        
        }
    }
    if (component==1 && flag==1)
    {
        if(row==0)
        {
            flag2=0;
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

            
        }
        else if(row==1)
        {
            flag2=1;
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

            
            
        }
        else
        {
        
            flag2=2;
            
            [pickerView reloadComponent:component+1];
            [pickerView reloadComponent:component+2];

        }
    }
}

@end
