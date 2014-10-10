//
//  ViewController.m
//  MusicSample
//
//  Created by mac mini on 10/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 100, 70, 30);
    [btn setTitle:@"Song 1" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(playAudio) forControlEvents:UIControlEventTouchUpInside];
    _song1Button=btn;
    [self.view addSubview:_song1Button];
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame=CGRectMake(100, 100, 70, 30);
    [button1 setTitle:@"Song 2" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(secondAudio) forControlEvents:UIControlEventTouchUpInside];
    _song2Button=button1;
    [self.view addSubview:_song2Button];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame=CGRectMake(200, 100, 70, 30);
    [button2 setTitle:@"Video" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(playVideo) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)playAudio{
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Song1" ofType:@"mp3"]] error:nil];
    [player prepareToPlay];
    [player play];
    //[_song1Button setTitle:@"Pause" forState:UIControlStateNormal];
    
}

-(void)secondAudio
{
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Song" ofType:@"mp3"]] error:nil];
    [player prepareToPlay];
    [player play];
    [_song2Button setTitle:@"Pause" forState:UIControlStateNormal];
    
}

-(void)playVideo
{
    NSURL *url = [NSURL URLWithString:
                  @"http://www.ebookfrenzy.com/ios_book/movie/movie.mov"];
    
    moviePlayer =  [[MPMoviePlayerController alloc]
                     initWithContentURL:url];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish:)name:MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];
    
    moviePlayer.controlStyle = MPMovieControlStyleDefault;
    moviePlayer.shouldAutoplay = YES;
    [self.view addSubview:moviePlayer.view];
    [moviePlayer setFullscreen:YES animated:YES];
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player1 = [notification object];
    [[NSNotificationCenter defaultCenter]removeObserver:self name:MPMoviePlayerPlaybackDidFinishNotification object:player1];
    
    if ([player1
         respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player1.view removeFromSuperview];
    }
}




- (IBAction)pauseAction:(id)sender {
    [player pause];
    }
@end
