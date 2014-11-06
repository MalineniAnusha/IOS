//
//  UpdateViewController.swift
//  DelegateSample
//
//  Created by SivaSankar on 24/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit
protocol UpdateViewControllerDelegate{
    func function(controller:UpdateViewController,textString:String)
}
    
class UpdateViewController: UIViewController {
    
var delegate:UpdateViewControllerDelegate? = nil
    
    @IBOutlet  var updateTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func update(sender: UIButton)
    {
        if (delegate != nil)
        {
            delegate!.function(self, textString:updateTF!.text!)
           
        }
    }
}