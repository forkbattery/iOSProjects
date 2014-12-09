//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by Kanishka Goel on 2014-12-09.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    var currentPhoto : Photo?
    
    @IBAction func dismiss(sender: AnyObject) {
        //dismiss the viewcontroller upon clicking ok
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailsLabel.text = currentPhoto!.notes
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
