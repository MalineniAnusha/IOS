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
        var url:NSURL = NSBundle.mainBundle().URLForResource("person", withExtension: "json")!
        var string:NSString = NSString.stringWithContentsOfURL(url, encoding:NSUTF8StringEncoding , error:nil)
        var data:NSData = string.dataUsingEncoding(NSUTF8StringEncoding)!
        let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as NSDictionary
        
        //print("   Json Data is : " , jsonDict)
        
        let dict = jsonDict["@context"] as NSDictionary
        let dict1 = dict["born"] as NSDictionary
        println( "Born values   \(dict1)")
        
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

