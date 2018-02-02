//
//  main.swift
//  MADCorp_Guneet
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
// Inputs FOR CLASS EMPLOYEE.
print("Enter EmployeeID")
var EmpId = Int(readLine()!)
print("Enter Name of Employee")
var Name = readLine()
print("Enter basic pay for Employee")
var basicPay = Double(readLine()!)
// Calling initializer for Emloyee Class.
var EmployeeObjct = Employee(ID: EmpId!, name: Name!, pay: basicPay!)
EmployeeObjct.display()


// Inputs For Class Permanent Employee.
print("Enter Number  of weeks for employee")
var weeks = Int(readLine()!)
// Calling Intializer for PermanentEmployee.
var PermanentEmployeeObjct = PermanentEmployee(EmpID: EmpId!, Name: Name!, Pay: basicPay!, Weeks: weeks!)
PermanentEmployeeObjct.display()

// Inputs for Class Payroll.
print("Enter weeks for employee to check hi payroll deduction.")
var Inputweeks = Int(readLine()!)
// Calling Initializer for PayrollClass.
var payrollObjct = Payroll(EmpID: EmpId!, Name: Name!, Pay: basicPay!, Weeks: Inputweeks!)


