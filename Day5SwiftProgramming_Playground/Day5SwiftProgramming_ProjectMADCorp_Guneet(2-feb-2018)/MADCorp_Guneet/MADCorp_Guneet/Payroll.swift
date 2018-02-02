//
//  Payroll.swift
//  MADCorp_Guneet
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Payroll: PermanentEmployee { // Inheriting class
    
    var finalpay: Double? // for storing Pay
    var weeks:Int? // For storing weeks
    var PaYObjc = PermanentEmployee()
    override init(EmpID: Int, Name: String, Pay: Double, Weeks: Int) {
        super.init(EmpID: EmpID, Name: Name, Pay: Pay, Weeks: Weeks)
        
        self.finalpay = Pay
        self.weeks = Weeks
        if weeks! > 5 {
            
            finalpay = finalpay! - 100
            print("Basic pay is deducted by 100 \(finalpay!)")
            
        }
        else {
            
            print("No change in pay \(finalpay!)")
        }
        
    }
    
    
    // DisplayFunction FOR Payroll Inherited class.
    override func display() {
        super.display()
        
    }
}
