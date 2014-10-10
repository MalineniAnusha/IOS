//
//  AppDelegate.h
//  MusicSync
//
//  Created by mac mini on 10/10/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    AVAudioPlayer *player1;
    AVAudioPlayer *player2;
}

@property(nonatomic,retain)AVAudioPlayer *player1;
@property(nonatomic,retain)AVAudioPlayer *player2;
@property (strong, nonatomic) UIWindow *window;

@end
