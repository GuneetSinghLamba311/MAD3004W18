//
//  PermanentEmployee.swift
//  MADCorp_Guneet
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class PermanentEmployee : Employee {
    var vacationWeeks: Int?
    
    // Default Initializer
    override init () {
        super.init()
        self.vacationWeeks = 0
    }
    
    // Parameterized Initializer sub class.
    
    init(EmpID:Int,Name:String,Pay:Double,Weeks: Int)
    {
        
        super.init(ID: EmpID, name: Name, pay: Pay) // USE THIS BY DEFAULT FOR CALLING BASE INITIALIZER.
        self.vacationWeeks = Weeks
    }
    override func display() {
        super.display()
        print("Vacation Weeks: ", vacationWeeks!)
    }
}
