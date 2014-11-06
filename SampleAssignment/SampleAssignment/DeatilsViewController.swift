//
//  DeatilsViewController.swift
//  SampleAssignment
//
//  Created by mac mini on 11/5/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit

class DeatilsViewController: UITableViewController,insertDelegate {
    
    var nameArray = NSMutableArray()
    var amountArray = NSMutableArray()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as UITableViewCell
       
        cell.textLabel?.text = nameArray.objectAtIndex(indexPath.row) as AnyObject as? String
        cell.detailTextLabel?.text = amountArray.objectAtIndex(indexPath.row) as AnyObject as? String
        return cell
    }
    
    func addToTransactionTable(controller:addTransactionController,name: String, amount: String) {
        nameArray.addObject(name)
        amountArray.addObject(amount)
        self.tableView.reloadData()
        controller.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "pushByADD"
        {
            let viewController = segue.destinationViewController as addTransactionController
            viewController.delegate=self
        }
        
    }
    
}
