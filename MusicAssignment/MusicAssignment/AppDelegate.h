//
//  AppDelegate.h
//  MusicAssignment
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
     AVAudioPlayer *player;
     AVAudioPlayer *player1;
}
@property (nonatomic, retain) AVAudioPlayer *player;
@property (nonatomic, retain) AVAudioPlayer *player1;
@property (strong, nonatomic) UIWindow *window;

@end
