//
//  ViewController.swift
//  PickerView
//
//  Created by mac mini on 11/5/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
var value:Int = 0
var value1:Int = 0

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate {
    
    
    var stateArray = ["Andhra Pradesh" , "Telangana"]
    var apArray = ["Visakhapatnam" , "Srikakulam" , "Nellore"]
    var telArray = ["Hyderabad" , "Warangal", "Khammam"]
    var visArray = ["Seethammadhara" , "HB Colony", "MVP Colony"]
    var sriArray = ["Gajuwaka" , "Akkayapalem", "BS Layout"]
    var nelArray = ["MG Road" , "LB Street", "Madhurawada"]
    var hydArray = ["Dabagardens" , "CMR Road", "Dwarakanagar"]
    var warArray = ["Kajipeta" , "Karachiwala", "North Extension"]
    var khamArray = ["South East" , "West", "North"]
    

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate=self
        pickerView.dataSource=self
        pickerView.reloadAllComponents()
        self.view.addSubview(pickerView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        switch(component)
            {
        case 0 : return 2
        
        case 1 : return 3
       
        case 2 : return 3
       
        default :return 0
        
        }
        
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        var title:NSString = ""
       
        
        if component==0
        {
            switch (row)
                {
            case 0 : title = stateArray[row]
            case 1 :title = stateArray[row]
            default :title = ""
            }
            
            }
        
        else if component==1
        {
            if value==1
            {
                switch (row) {
                case 0 : title = apArray[row]
                case 1 : title = apArray[row]
                case 2 : title = apArray[row]
                default :title = ""
                }
            }
            else if value==2
            {
                switch (row)
                    {
                case 0 : title = telArray[row]
                case 1 : title = telArray[row]
                case 2 : title = telArray[row]
                default : title = ""
                }
            }
        }
            
        else if component==2
        {
            switch (value)
                {
            case 1 :
                if value1==1
                {
                    switch (row)
                        {
                    case 0 : title = visArray[row]
                    case 1 : title = visArray[row]
                    case 2 : title = visArray[row]
                    default :title = ""
                    }
                    
                }
                else if value1==2
                {
                    switch(row)
                        {
                    case 0 : title = sriArray[row]
                    case 1 : title = sriArray[row]
                    case 2 : title = sriArray[row]
                    default :title = ""

                    }
                }
                else if value1==3
                {
                    switch(row)
                        {
                    case 0 : title = nelArray[row]
                    case 1 : title = nelArray[row]
                    case 2 : title = nelArray[row]
                    default :title = ""

                    }
                }
                
            case 2 :
                if value1==1
                {
                    switch (row)
                        {
                    case 0 : title = hydArray[row]
                    case 1 : title = hydArray[row]
                    case 2 : title = hydArray[row]
                    default :title = ""
                    }
                    
                }
                else if value1==2
                {
                    switch(row)
                        {
                    case 0 : title = warArray[row]
                    case 1 : title = warArray[row]
                    case 2 : title = warArray[row]
                    default :title = ""
                        
                    }
                }
                else if value1==3
                {
                    switch(row)
                        {
                    case 0 : title = khamArray[row]
                    case 1 : title = khamArray[row]
                    case 2 : title = khamArray[row]
                    default :title = ""
                        
                    }
                }
                

            default :  title  = ""
                }
            }
    
        
        return title
        }

    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if component==0
        {
            if row==0
            {
                value=1;
               
                pickerView.reloadAllComponents()
                pickerView.selectRow(0, inComponent: 1, animated: true)
                pickerView.selectRow(0, inComponent: 2, animated: true)
            }
            else
            {
                value=2;
                pickerView.reloadAllComponents()
                pickerView.selectRow(0, inComponent: 1, animated: true)
                pickerView.selectRow(0, inComponent: 2, animated: true)

                
            }
        }
        else if component==1
        {
            if row==0
            {
                value1=1;
                pickerView.reloadAllComponents()
            }
                
            else if row==1
            {
                value1=2;
                 pickerView.reloadAllComponents()
            }
            else if row==2
            {
                value1=3;
                 pickerView.reloadAllComponents()
            }
            
        }

    }
}




