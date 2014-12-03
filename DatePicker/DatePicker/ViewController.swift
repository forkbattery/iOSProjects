//
//  ViewController.swift
//  DatePicker
//
//  Created by Kanishka Goel on 2014-12-03.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

/* User can select a date and find out what day of the week it is */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func displayDay(sender: AnyObject) {
        //get the date from the date picker
        var chosenDate = datePicker.date
        
        //format the date
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE" //"EEEE" represents the day of the week in its full name form
        
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        //create alert controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        //add OK button
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        //show the alert
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

