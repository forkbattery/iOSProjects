//
//  ViewController.swift
//  SwiftApp
//
//  Created by Kanishka Goel on 2014-11-29.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declare ivars
    var myFirstLabel : UILabel!
    var iPhoneLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create the labels
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        addLabels()
        
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTapGesture(tapGesture : UITapGestureRecognizer){
        addLabels()
    }
    
    func addLabels(){
        myFirstLabel.text = "My first"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: 100, y: 40)
        view.addSubview(myFirstLabel)
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.myFirstLabel.center = CGPoint(x: 100, y: 240)
            
            }, completion: nil)
        
        iPhoneLabel.text = "iPhone app"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(48)
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 400, y: 290)
        view.addSubview(iPhoneLabel)
        
        iPhoneLabel.alpha = 0 //hidden
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.iPhoneLabel.center = CGPoint(x: 200, y: 290)
            self.iPhoneLabel.alpha = 1 //visible
            
            }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

