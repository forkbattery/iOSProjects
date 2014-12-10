//
//  Note.swift
//  Notes App
//
//  Created by Kanishka Goel on 2014-12-10.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

import UIKit

//Array that will hold all our notes
var allNotes:[Note] = []
//The following integer will refer to the current index in the note array
var currentNoteIndex:Int = -1
//variable that is going to reference the table of notes, hence the type UITableView
var noteTable:UITableView?

let kAllNotes:String = "notes"

class Note: NSObject {
    var date:String
    var note:String
    
    override init() {
        note = ""
        date = NSDate().description
    }
    
    //function to convert our note into a dictionary of key:value pairs
    func dictionary() -> NSDictionary {
        return ["note":note, "date":date]
    }
    
    //class method (static method) to save all of our notes
    //Going to convert all of our notes into dictionaries and save that array of dictionaries into persistent storage
    class func saveNotes() {
        var aDictionaries:[NSDictionary] = []
        //create an array of dictionaries with our notes
        for var i:Int = 0; i < allNotes.count; i++ {
            aDictionaries.append(allNotes[i].dictionary())
        }
        //save to user defaults
        NSUserDefaults.standardUserDefaults().setObject(aDictionaries, forKey: kAllNotes)
    }
    
    //class method to load notes. We're going to do the opposite of what we did in saveNotes()
    //going to take that raw dictionary of values and keys, apply it to notes and repopulate our allNotes array
    class func loadNotes() {
        var defaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var savedData:[NSDictionary]? = defaults.objectForKey(kAllNotes) as? [NSDictionary]
        
        if let data:[NSDictionary] = savedData {
            for var i:Int = 0; i < data.count; i++ {
                var n:Note = Note()
                n.setValuesForKeysWithDictionary(data[i])
                allNotes.append(n)
            }
        }
        
    }
}
