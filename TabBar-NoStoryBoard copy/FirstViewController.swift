//
//  FirstViewController.swift
//  TabBar-NoStoryBoard
//
//  Created by SivaSankar on 22/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonlicked(sender: AnyObject) {
        
        label.text = "First View"
    }
}
