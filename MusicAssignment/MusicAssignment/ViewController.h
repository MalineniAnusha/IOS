//
//  ViewController.h
//  MusicAssignment
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>

- (IBAction)pauseAction:(id)sender;
- (IBAction)playAction:(id)sender;
- (IBAction)pause1:(id)sender;
- (IBAction)play1:(id)sender;
@end
