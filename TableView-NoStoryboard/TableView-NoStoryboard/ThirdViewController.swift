//
//  ThirdViewController.swift
//  TableView-NoStoryboard
//
//  Created by SivaSankar on 24/10/14.
//  Copyright (c) 2014 Paradim Creatives. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var array1=["1","2","3","4","5","6"]
    var array2=["A","B","C","D","E","F"]
    var array3=["R","S","T","U","V","W"]
    var array4=["7","8","9","10","0","1"]
    var array5=["G","H","I","J","K","L"]
    var array6=["M","N","O","P","Q","R"]
    var name:String = " "
    @IBOutlet var table: UITableView!
    
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
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil {
            cell = UITableViewCell(style:.Default, reuseIdentifier: "cell")
            
        }
        if name=="Anusha"
        {
            cell.textLabel?.text = array1[indexPath.row]
        }
               if name=="Manogna"
        {
            cell.textLabel?.text = array2[indexPath.row]
        }
        if name=="Shivajee"
        {
            cell.textLabel?.text = array3[indexPath.row]
        }
        if name=="Ramana"
        {
            cell.textLabel?.text = array4[indexPath.row]
        }
        if name=="Vamsi"
        {
            cell.textLabel?.text = array5[indexPath.row]
        }
        if name=="Hari"
        {
            cell.textLabel?.text = array6[indexPath.row]
        }
        return cell
    }


}
