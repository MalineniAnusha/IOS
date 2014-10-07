//
//  LoginViewController.h
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
@property (weak, nonatomic) IBOutlet UITextField *passTF;
- (IBAction)loginClicked:(id)sender;

@end
