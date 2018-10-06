//
//  Person.swift
//  SectionIndex_v3
//
//  Created by macbook on 10/1/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import Foundation

class Person {
    
    var maleFirstNames = []
    var maleMiddleNames = []
    var femaleFirstNames = []
    var femaleMiddleNames = []
    var lastNames = []
    
    var firstName = ""
    var middleName = ""
    var lastName = ""
    var fullName = ""
    var phone = ""
    
    var first = true
    
    init() {
        
        // Initial data if it is the first time
        if first {
            maleFirstNames = ["Goku", "Long Hoang", "Naruto", "Sasuke", "Thien Xi Hang", "Ka Me"]
            maleMiddleNames = ["Apple", "Napoleon", "Beethoven", "Moza", "Gucci"]
            femaleFirstNames = ["Min", "Van Navy", "Yen Chi", "Chii Be", "Long Bii"]
            femaleMiddleNames = ["Buberry", "Channel", "D&G", "Valentino", "Prada"]
            lastNames = ["Linh Ka Team No 1", "Linh Ka Team No 2", "Linh Ka Team No 3", "Linh Ka Team No 4", "Linh Ka Team No 5"]
            first = false
        }
        
        // Get random gender: 0 or 1
        let genderIndex = arc4random_uniform(2)
        
        // Get random names by Index
        if genderIndex == 0 {
            firstName = femaleFirstNames[Int(arc4random_uniform(UInt32(femaleFirstNames.count)))] as! String
            middleName = femaleMiddleNames[Int(arc4random_uniform(UInt32(femaleMiddleNames.count)))] as! String
            
        } else {
            firstName = maleFirstNames[Int(arc4random_uniform(UInt32(maleFirstNames.count)))] as! String
            middleName = maleMiddleNames[Int(arc4random_uniform(UInt32(maleMiddleNames.count)))] as! String
        }
        
        lastName = lastNames[Int(arc4random_uniform(UInt32(lastNames.count)))] as! String
        fullName = lastName + "  " + middleName + "  " + firstName
        phone = "0900-xxx-" + "\(arc4random_uniform(1000))"
        
    }
    
}
