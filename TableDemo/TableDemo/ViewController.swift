//
//  ViewController.swift
//  TableDemo
//
//  Created by Kanishka Goel on 2014-12-04.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let courses = [
        ("SFWR 4F03 - Parallel Computing","Ned Nedialkov"),
        ("SFWR 4C03 - Networks and Security","Michael Soltys"),
        ("SFWR 4HC3 - Human Computer Interaction","Robert Teather"),
        ("SFWR 4AA4 - Real Time Systems","Douglas Down"),
        ("SFWR 4G06 - Software Capstone Project","Alan Wassyng"),
        ("SFWR 4J03 - Communication Systems","Rong Zheng"),
        ("SFWR 4TB3 - Compilers","Emil Sekerinski"),
        ("SFWR 4DB3 - Database Design","Fei Chiang")]


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    //The following function creates a new cell, gives it some value and returns. Called automatically once per row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let (courseTitle, courseProfessor) = courses[indexPath.row]
        
        cell.textLabel?.text = courseTitle
        
        return cell
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

