//
//  ViewController.swift
//  PickerData
//
//  Created by Kanishka Goel on 2014-12-03.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

/* Loading data into picker view control */

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let moodArray = ["Happy", "Sad", "Maudlin", "Ecstatic", "Overjoyed", "Optimistic", "Bewildered", "Cynical", "Giddy", "Indifferent", "Relaxed"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor : UIColor
        switch row{
        case 0,3,4,5,8:
            newBackgroundColor = UIColor.yellowColor()
        case 1,2:
            newBackgroundColor = UIColor.darkGrayColor()
        case 6,7,9:
            newBackgroundColor = UIColor.lightGrayColor()
        default:
            newBackgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
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

