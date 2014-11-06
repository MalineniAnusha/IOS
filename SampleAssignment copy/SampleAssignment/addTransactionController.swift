//
//  addTransactionController.swift
//  SampleAssignment
//
//  Created by mac mini on 11/5/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
protocol insertDelegate
{
    func addToTransactionTable(controller:addTransactionController, name:String , amount :String)
}

class addTransactionController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var amountTF: UITextField!
    
    
    var delegate:insertDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func doneClicked(sender: AnyObject) {
        
        if(delegate != nil)
        {
            delegate?.addToTransactionTable(self, name: nameTF.text, amount: amountTF.text)
        }
        
    }

    
}
