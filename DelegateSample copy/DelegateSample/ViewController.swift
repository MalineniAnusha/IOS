//
//  ViewController.swift
//  DelegateSample
//
//  Created by SivaSankar on 24/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UpdateViewControllerDelegate{

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwdTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "push"
        {
            let viewController = segue.destinationViewController as UpdateViewController
            viewController.delegate=self
        }
    }

    @IBAction func nextClicked(sender: AnyObject) {
    }

    func function(controller:UpdateViewController,textString:String){
    
        nameTF.text=textString
         controller.navigationController?.popToRootViewControllerAnimated(true)
    }
}

