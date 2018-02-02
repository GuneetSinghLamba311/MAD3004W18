//: Playground - noun: a place where people can play

import UIKit

// Classes
// Create class employee.
class Employee {
    
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    
    // initializers in swift
    // Default initializer
    init() {
        
        self.empID = 0
        self.empName = "Dan"
        self.basicPay = 2000
        
        }
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

// FOR SUPER CLASS.
var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Guneet"
emp1.basicPay = 5000
emp1.display()
var emp3 = Employee() // FOR CALLING DEFAULT INITIALIZER.
emp3.display()
var emp4 = Employee(ID: 104, name: "Jenny", pay: 3409.89) /// FOR CALLING PARAMETRIZED INITIALIZER.
emp4.display()

// Inheriting from Employee Class.
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
var obj2 =  PermanentEmployee()
obj2.display()
obj2.empID = 102
obj2.empName = "Guneet"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
var obj5 = PermanentEmployee()
obj5.display()
var obj6 = PermanentEmployee(EmpID: 6, Name: "Sharon", Pay: 4500, Weeks: 1)
obj6.display()

// INHERTING FROM PERMANENT CLASS.

class Payroll: PermanentEmployee { // Inheriting class
    
    var finalpay: Double? // for storing Pay
    var weeks:Int? // For storing weeks
    var PaYObjc = PermanentEmployee()
    
    /*
    var netpay: Double {
        get{
            var vw = self.vacationWeeks!
            return self.basicPay!-100
            }
        else {
        return self.basicPay!
        }
    }
*/
    
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

var PayrollObjC = Payroll(EmpID: 89, Name: "JOHN", Pay: 6000, Weeks: 6)
PayrollObjC.display()

// Manipulate Object array[]

var JanPayroll = [Payroll]()
let noofemployees = 2
for i in 0..<noofemployees{
    JanPayroll.append(Payroll(EmpID: 107, Name: "JK", Pay: 5555.56, Weeks: 7))
    JanPayroll[i].display()
}














