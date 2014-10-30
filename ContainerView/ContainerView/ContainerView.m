//
//  ContainerView.m
//  ContainerView
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ContainerView.h"

@interface ContainerView ()
@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (strong, nonatomic) IBOutlet UIView *manuView;
@property (strong, nonatomic) IBOutlet UIView *profileView;
@property (strong, nonatomic) ShareSettings *sharedSettings;
@end

@implementation ContainerView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sharedSettings = [ShareSettings sharedSettings];
    self.sharedSettings.menuTapped=YES;
    self.sharedSettings.profileTapped=YES;
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

   [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(profileButtonClicked) name:@"Profile" object:nil];
   [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(menuButtonClicked) name:@"menu" object:nil];
    
    // Do any additional setup after loading the view.
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"Profile" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"menu" object:nil];
}
-(void)profileButtonClicked
{
    if(self.sharedSettings.profileTapped)
    {
        [UIView animateWithDuration:0.3 animations:^{
         self.mainView.frame = CGRectMake(0,self.mainView.frame.origin.y, self.mainView.frame.size.width, self.mainView.frame.size.height);
         self.profileView.frame = CGRectMake(260, self.profileView.frame.origin.y, self.profileView.frame.size.width, self.profileView.frame.size.height);
        }];
    }
    else
    {
        [UIView animateWithDuration:0.3 animations:^{
            self.mainView.frame = CGRectMake(-260,self.mainView.frame.origin.y, self.mainView.frame.size.width, self.mainView.frame.size.height);
            self.profileView.frame = CGRectMake(0, self.profileView.frame.origin.y, self.profileView.frame.size.width, self.profileView.frame.size.height);}];
        NSLog(@"Frame Width: %f, %f", self.profileView.frame.size.width, self.mainView.frame.size.width);
    }
    self.sharedSettings.profileTapped = !self.sharedSettings.profileTapped;

}
-(void)menuButtonClicked
{
  if(self.sharedSettings.menuTapped)
  {
      [UIView animateWithDuration:0.3 animations:^{
          self.mainView.frame = CGRectMake(0, self.mainView.frame.origin.y, self.mainView.frame.size.width, self.mainView.frame.size.height);
          
          self.manuView.frame = CGRectMake(-260, self.manuView.frame.origin.y, self.manuView.frame.size.width, self.manuView.frame.size.height);
      }];
    } else{
    
        
        [UIView animateWithDuration:0.3 animations:^{
            self.mainView.frame = CGRectMake(260, self.mainView.frame.origin.y, self.mainView.frame.size.width, self.mainView.frame.size.height);
            
            self.manuView.frame = CGRectMake(0,  self.manuView.frame.origin.y, self.manuView.frame.size.width, self.manuView.frame.size.height);
        }];

}
self.sharedSettings.menuTapped=!self.sharedSettings.menuTapped;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
