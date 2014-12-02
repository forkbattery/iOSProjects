//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Kanishka Goel on 2014-12-02.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //@IBOutlet for when the code causes the change in UI object
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    //@IBAction for when a UI object causes a change in code
    @IBAction func changeLabel(sender: AnyObject) {
        label.text = "Hello, " + textField.text + "!"
        //Make the textfield give up being the first responder so that the keyboard goes away after the button is pressed
        self.textField.resignFirstResponder()
    }
    
    //Dismissing the keyboard with delegation with the help of UITextFieldDelegate protocol
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    //Make the keyboard go away when the screen is touched anywhere in the empty space
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* We are not going to ask the textfield to give up being the first responder in this
        case as if there were multiple textfields, we'd have to ask all of them one by one to
        give up being first responders. Instead the following statement will ask all the UI
        objects to give up being the first responders*/
        self.view.endEditing(true)
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

