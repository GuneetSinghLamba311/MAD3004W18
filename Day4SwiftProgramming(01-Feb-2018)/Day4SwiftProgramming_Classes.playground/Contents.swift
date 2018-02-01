//: Playground - noun: a place where people can play

import UIKit

// declaring a structure.

struct project {
    var title = ""
    var hours = 0
    
    func display()
    {
        print("Project Title: " ,title)
        print("Total work hours required: ", hours)
    }
}
// Creating instance of structure.
var LMSProject = project(title: "Moodle", hours: 200)
print(LMSProject)
LMSProject.display()


// class declaration

class Manager{
    var name: String = ""
    var productOwner: Bool = true
    var currentProjects = project()
}

// creating instance of class.
let mgrCanada = Manager()
mgrCanada.name = "Guneet"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)
print("mgrCanadaName :", mgrCanada.name)
print("mgrCanada Product: ", mgrCanada.productOwner)
print("mgrCanada current Project title: ",mgrCanada.currentProjects.title)
print("mgrCanada current Project hours: ",mgrCanada.currentProjects.hours)


// Change values for  poductowner and hours.
mgrCanada.productOwner = false
mgrCanada.currentProjects.hours = 4
print("mgrCanada Product: ", mgrCanada.productOwner)
print("mgrCanada current Project hours: ",mgrCanada.currentProjects.hours)




// Structure are value types.
struct address{
    
    var street = "265 Yorkland blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
    }
var lambton = address()
print("Lambton: ",lambton)

var cestar = lambton

//let cestar = lambton // generates an error whiel declaring it wit let keyword.

cestar.street = "271 Yorkland BLVD"
cestar.postalCode = "M1H3Y3"
print("Cestar: ",cestar)
print("Lambton :",lambton)

// Classes are references types
class Institute {
    
    var street = "265 Yorkland blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}
var mylambton = Institute()
print("street :",mylambton.street)
print("city  :",mylambton.city)
print("postalcode :",mylambton.postalCode)

var mycestar = mylambton
print("cestar street :",mycestar.street)
print("cestar postalcode :",mycestar.postalCode)

print("mylambton street :",mylambton.street)
print("mylambton postalcode :",mylambton.postalCode)

// identical to ===
if mylambton === mycestar {
    print("Lambton and cestar are same")
}
else{
    print("lambton and cestar are not same")
}

var mycestarNew  = Institute()
mycestarNew.street = "271 Yorkland blvd"
mycestarNew.postalCode = "M3H3Y1"
if mycestarNew === mycestar {
    
    print("Lambton and cestar are same")
}
else{
    print("lambton and cestar are not same")
}


// Creatre class for Person.

struct adress {
    var street = "Gorman street"
    var area = "North York"
    var postalCode = "M3H3K5"
    
}

class person {
    
    var FirstName = "Guneet"
    var LastName = " Singh"
    var age = 23
    var address = adress()
    var amount = 2000
}
var person_Objectb = person()
print("Firstname: ", person_Objectb.FirstName)
print("Lastname: ", person_Objectb.LastName)
print("Age: ", person_Objectb.age)
print("Street: ", person_Objectb.address.street)
print("Area: ", person_Objectb.address.area)
print("Postalcode ", person_Objectb.address.postalCode)

