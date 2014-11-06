//
//  SecondViewController.h
//  DelegateSample
//
//  Created by mac mini on 9/30/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol firstDelegate <NSObject>

@required
-(void)delegateFunction:(NSString *)textfield;

@end

@interface SecondViewController : UIViewController<UITextFieldDelegate>
- (IBAction)backAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *backTF;

@property(weak,nonatomic)id<firstDelegate>delegateObject;

@end
