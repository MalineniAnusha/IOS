//
//  ViewController.swift
//  Login
//
//  Created by SivaSankar on 21/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var psdTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        if ((nameTF.text).isEmpty) && ((psdTF.text).isEmpty){                      let alert = UIAlertView()
            alert.title = "InValid Login"
            alert.message = "Enter the details"
            alert.addButtonWithTitle("OK")
            alert.show()
            println("username is empty")
            
        }
        else if((nameTF.text).isEmpty) {
            let alert=UIAlertView()
            alert.title="Enter Login Name"
            alert.message="Enter User details"
            alert.addButtonWithTitle("OK")
            alert.show();
        }
        else if((psdTF.text).isEmpty){
            let alert=UIAlertView()
            alert.title="Enter Password"
            alert.message="Enter password"
            alert.addButtonWithTitle("OK")
            alert.show();
        }
        else
        {
//            self.navigationController?.pushViewController(DetailsViewController(), animated: true)
            
            
            var storyBoard=UIStoryboard(name: "Main", bundle: NSBundle .mainBundle())
            var postLogin:AnyObject=storyBoard.instantiateViewControllerWithIdentifier("detailboard")
            self.navigationController?.pushViewController(postLogin as UIViewController, animated: true)
        }
    }

}

