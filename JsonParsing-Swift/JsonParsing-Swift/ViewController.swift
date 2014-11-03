//
//  ViewController.swift
//  JsonParsing-Swift
//
//  Created by mac mini on 11/3/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var error: NSError?
        var url:NSURL = NSBundle.mainBundle().URLForResource("document", withExtension: "json")!
        var string:NSString = NSString.stringWithContentsOfURL(url, encoding:NSUTF8StringEncoding , error:&error)
        var data:NSData = NSData.dataWithContentsOfFile(string, options: nil, error: nil)
        
        let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as NSDictionary
        
        print("   Json Data is : %@ " , jsonDict)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

