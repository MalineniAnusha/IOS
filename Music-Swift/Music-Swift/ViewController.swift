//
//  ViewController.swift
//  Music-Swift
//
//  Created by mac mini on 10/31/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController , AVAudioPlayerDelegate {
    var player = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
                
       
        var url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Song", ofType: "mp3")!)
        var error:NSError?
        player = AVAudioPlayer(contentsOfURL: url, error: &error)
        player.prepareToPlay()
        player.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playClicked(sender: AnyObject) {
        player.play()
    }

    @IBAction func stopClicked(sender: AnyObject) {
        player.stop()
    }
    }

