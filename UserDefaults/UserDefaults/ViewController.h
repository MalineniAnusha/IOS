//
//  ViewController.h
//  UserDefaults
//
//  Created by mac mini on 10/8/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *FirstNameTf;
@property (weak, nonatomic) IBOutlet UITextField *LastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
- (IBAction)addImage:(id)sender;
- (IBAction)saveButton:(id)sender;

@end
