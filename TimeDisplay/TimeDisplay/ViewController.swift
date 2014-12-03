//
//  ViewController.swift
//  TimeDisplay
//
//  Created by Kanishka Goel on 2014-12-02.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func refreshTime(sender: AnyObject) {
        //get current date - includes time
        let now = NSDate()
        
        //create date formatter, set to hours:mins am/pm
        var formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm a"
        
        //change label
        timeLabel.text = formatter.stringFromDate(now)
        
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

