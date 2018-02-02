//
//  Employee.swift
//  MADCorp_Guneet
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
// initializers in swift
// Default initializer
  
/*
    init(){
        
    self.empID = 0
    self.empName = "Dan"
    self.basicPay = 2000
        
}
 */
    // Parametrized initializer.
    init(ID:Int,name:String,pay:Double) {
        self.empID = ID
        self.empName = name
        self.basicPay = 0.0
    }
    
    func display() {
        
        print("EmployeeID : ", self.empID!)// use of self is to point to its own instances like function,class.
        print("Employee Name: ", self.empName!)
        print("Basic Pay : ", self.basicPay!)
        
    }
    // deinitializer.
    deinit {
        
        print("Employee object deinitialized")
    }
}
