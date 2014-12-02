//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Kanishka Goel on 2014-12-02.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet for when the code causes the change in UI object
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    //@IBAction for when a UI object causes a change in code
    @IBAction func changeLabel(sender: AnyObject) {
        label.text = "Hello, " + textField.text + "!"
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

