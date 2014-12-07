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
    
    let courses2 = [
        ("SFWR 3F03 - Machine Computing", "Ned Nedialkov"),
        ("SFWR 3A04 - Large Systems Design", "Ridha Khedri"),
        ("SFWR 3I03 - Communication skills", "Emil Sekerinski"),
        ("SFWR 3S03 - Software Testing and Management", "Ivan Bruha"),
        ("SFWR 3RA3 - Software Testing and Requirements", "Janicki"),
        ("SFWR 3GA3 - Computer Architecture", "George Karakostas"),
        ("STAT 3Y03 - Statistics for Engineers", "Senay Asma")]


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return courses.count
        } else {
            return courses2.count
        }
    }
    
    //The following function creates a new cell, gives it some value and returns. Called automatically once per row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        //indexPath gets us the row as well as the section
        if indexPath.section == 0{
            let (courseTitle, courseProfessor) = courses[indexPath.row]
            cell.textLabel?.text = courseTitle
            //provide the course professor as "subtitle" in the cell
            cell.detailTextLabel?.text = courseProfessor
        } else {
            let (courseTitle, courseProfessor) = courses2[indexPath.row]
            cell.textLabel?.text = courseTitle
            cell.detailTextLabel?.text = courseProfessor
        }
        
        //retrieve an image
        var myImage = UIImage(named: "CellIcon")
        //display the image in the cell
        cell.imageView?.image = myImage
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "4th Year Courses"
        } else {
            return "3rd Year Courses"
        }
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

