//
//  ViewController.h
//  AV+MP Asignment
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "AVFoundation/AVAudioPlayer.h"

@interface ViewController : UIViewController<AVAudioPlayerDelegate,AVAudioRecorderDelegate>
{
    AVAudioRecorder *recorder;
    AVAudioPlayer *player;
}
- (IBAction)playSong:(id)sender;
- (IBAction)stopSong:(id)sender;
- (IBAction)recordSong:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *playOutlet;
@property (weak, nonatomic) IBOutlet UIButton *recordOutlet;
@property (weak, nonatomic) IBOutlet UIButton *stopOutlet;

@end
