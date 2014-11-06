//
//  ViewController.swift
//  JsonLink
//
//  Created by mac mini on 11/4/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController,NSURLConnectionDelegate{
    
    var data = NSMutableData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.startConnection()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 func startConnection()
 {
    let filePath:NSString = "http://api.dan.co.jp/jsonenv"
    var url:NSURL = NSURL(string: filePath)
    var request:NSURLRequest = NSURLRequest(URL: url)
    var connection:NSURLConnection = NSURLConnection(request: request, delegate: self)
    connection.start()

 }
    func connection(connection: NSURLConnection, didReceiveData data: NSData)
    {
        self.data.appendData(data)
    }

    func connectionDidFinishLoading(connection: NSURLConnection)
    {
        var error:NSError?
        var jsonObject:NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        
                //println(jsonObject)
        
        let value = jsonObject["DOCUMENT_ROOT"] as NSString
        println(value)
        
        
        var data1:NSData = NSJSONSerialization.dataWithJSONObject(jsonObject, options: NSJSONWritingOptions(), error: nil)!
        
        var filepath:NSString = "/Users/mac mini/Desktop/Jsongenerated.json"
        var outputStream:NSOutputStream = NSOutputStream.outputStreamToFileAtPath(filepath, append: false)
        outputStream.open()

        NSJSONSerialization.writeJSONObject(jsonObject, toStream: outputStream, options:NSJSONWritingOptions(), error: nil)
    }

}

