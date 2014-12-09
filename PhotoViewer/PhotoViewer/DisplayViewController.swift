//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Kanishka Goel on 2014-12-09.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    
    var currentPhoto : Photo? //made optional as it may not have a value everytime this View Contoller is instantiated

    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        
        self.title = currentPhoto!.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var thirdScene = segue.destinationViewController as InfoViewController
        // Pass the selected object to the new view controller.
        thirdScene.currentPhoto = currentPhoto
    }
    

}
