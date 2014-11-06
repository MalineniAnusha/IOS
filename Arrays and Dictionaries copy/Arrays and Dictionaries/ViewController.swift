//
//  ViewController.swift
//  Arrays and Dictionaries
//
//  Created by mac mini on 11/4/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var mainArray:NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.showdata()
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
func showdata()
{
    var innerArray = ["cold","ice"]
    var ffDict = ["Length":7.0 , "Width":12.0 , "Height":8.0]
    var fsDict = ["Laitude":67.8 , "Longitude":94.5]
    var mDict = ["id":1 ,"name": "An ice Cream","price":12.50 , "tags":innerArray , "Dimensions":ffDict , "WareHouse":fsDict]
    
    var sfDict = ["Length" :8.6 , "Width" :3.9 , "Heigth" :2.9]
    var ssDict = ["Latitude":83.9 , "Longitude":49.7]
    var m2Dict = ["id":2 , "name":"A Blue House" , "price":15.60 , "Dimensions":sfDict , "WareHouse":ssDict]
     mainArray = [mDict,m2Dict]
    
    //println(mainArray)
    
    if(NSJSONSerialization.isValidJSONObject(mainArray))
    {
        var fileName:NSString = "/Users/pcs-mac/Desktop/arrayJsonDict.json";
        var os:NSOutputStream = NSOutputStream.outputStreamToFileAtPath(fileName, append: false)
        os.open()
        NSJSONSerialization.writeJSONObject(mainArray, toStream: os, options: nil, error: nil)
        os.close()
        var istream:NSInputStream = NSInputStream.inputStreamWithFileAtPath(fileName)
        istream.open()
        var readDict = [NSJSONSerialization.JSONObjectWithStream(istream, options: nil, error: nil)]
        istream.close()
        println(readDict)
        
    }
    
    }
    
    
}

