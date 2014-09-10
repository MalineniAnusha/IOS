//
//  STAppDelegate.m
//  TabBarController
//
//  Created by Paradigm Creatives on 9/10/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "STAppDelegate.h"
#import "STabBarViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@implementation STAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    _tabproperty = [[UITabBarController alloc] init];

STabBarViewController *tabview = [[STabBarViewController alloc]initWithNibName:@"STabBarViewController" bundle:nil];
    SecondViewController *second=[[SecondViewController alloc]init];
    ThirdViewController *third=[[ThirdViewController alloc]init];

    FourthViewController *fourth=[[FourthViewController alloc]init];

    [self.window setRootViewController:_tabproperty];
    _nav1 = [[UINavigationController alloc]initWithRootViewController:tabview];
    _nav2 = [[UINavigationController alloc]initWithRootViewController:second];
    _nav3 = [[UINavigationController alloc]initWithRootViewController:third];
    _nav4 = [[UINavigationController alloc]initWithRootViewController:fourth];
    
    [_nav1 setTitle:@"First"];
    [_nav2 setTitle:@"Second"];
    [_nav3 setTitle:@"Third"];
    [_nav4 setTitle:@"Fourth"];
    
    _tabproperty.viewControllers = [NSArray arrayWithObjects: _nav1, _nav2 , _nav3, _nav4,nil];


    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
