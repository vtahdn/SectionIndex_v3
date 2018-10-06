//
//  TableViewController.swift
//  SectionIndex_v3
//
//  Created by macbook on 10/1/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var data: NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = NSMutableArray()
        for i in 0...5 {
            data.addObject(Person())
            let person = data[i] as! Person
            print(person.fullName)
            print(person.phone + "\n")
        }
    }

}
