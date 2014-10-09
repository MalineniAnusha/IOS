//
//  DetailsViewController.h
//  MapAssignment
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailObject.h"

@interface DetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *subLocality;
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *localityTF;
@property (weak, nonatomic) IBOutlet UITextField *postalTF;
@property (weak, nonatomic) IBOutlet UITextField *placeTF;
@property(nonatomic,strong) DetailObject *detObj;

@end
