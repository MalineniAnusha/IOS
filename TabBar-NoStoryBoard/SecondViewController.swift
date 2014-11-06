//
//  SecondViewController.swift
//  TabBar-NoStoryBoard
//
//  Created by SivaSankar on 22/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        label.text = "Seond View"
        
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

}
