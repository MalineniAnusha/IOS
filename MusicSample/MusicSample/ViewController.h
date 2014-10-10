//
//  ViewController.h
//  MusicSample
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate,UIApplicationDelegate>
{
    AVAudioPlayer *player;
   MPMoviePlayerController *moviePlayer;
    double *time;
}
@property(nonatomic,strong)UIButton *song1Button;
@property(nonatomic,strong)UIButton *song2Button;
- (IBAction)pauseAction:(id)sender;

@end
