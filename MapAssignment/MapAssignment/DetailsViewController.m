//
//  DetailsViewController.m
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

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
    _subLocality.text=_detObj.subLocality;
    _nameTF.text=_detObj.nameTF;
    _localityTF.text=_detObj.localityTF;
    _postalTF.text=_detObj.postalTF;
    _placeTF.text=_detObj.placeTF;
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}



@end
