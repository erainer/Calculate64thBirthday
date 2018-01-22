//
//  ViewController.swift
//  calculateAge
//
//  Created by Emily on 1/21/18.
//  Copyright © 2018 Emily Rainer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var birthday = DateComponents()
    var myAge = 0
    var myYear = 0
    var myDay = 0
    var myMonth = 0
    
    var newAge = 64
    var newYear = 0
    let seonds = 86400
    let minutes = 1440
    let hours = 24
    let days = 1
    
    let date = Date()
    var newBirthday = ""
    
    var newDay = 0
    var newMonth = 0
    
    
    @IBOutlet weak var age: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthday.month = 6
        birthday.day = 3
        birthday.year = 1996
        birthday.hour = 8
        birthday.minute = 23
        
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        
        //calculate my age and how many years I need to be 64.
        myYear = birthday.year!
        myAge = year - myYear
        if(birthday.month! > month){
            myAge -= 1
        }
        newAge -= myAge
        
        //calculates what year I will be at 64.
        newYear = year + newAge
        
        newDay = birthday.day!
        newMonth = birthday.month!
        self.age.text = String(newMonth) + "/" + String(newDay) + "/" + String(newYear)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

