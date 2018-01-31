//: Playground - noun: a place where people can play

import UIKit

// USE OF DICTIONARY.
// Create  empty dictionary.
var nameOfInteger = [Int:String]()
// Assign Values to dictionary.
nameOfInteger[12] = "Twelve"
print(nameOfInteger)
print("Dictionary Contains \(nameOfInteger.count) elements")
nameOfInteger = [:] // it is again an empty dictionary of type [Int:String]
print("Dictionary have \(nameOfInteger.count) elements")
print("nameofIntegers \(nameOfInteger)")

// Checking wether the dictionary is empty or not.
if nameOfInteger.isEmpty {
    print("Dictioanry is empty")
    }
else
{
    print(nameOfInteger)
}

// Create a Dictionary of type [String:String]
var AirportnameDictionary = [String:String]()
// Assign values to the dictionary
AirportnameDictionary["YYZ"] = "Toronto Airport"
AirportnameDictionary["DUB"] = "Dub Airport"
AirportnameDictionary["NYC"] = "Newyork Airport"
AirportnameDictionary["IND"] = "India Airport"
AirportnameDictionary["CHN"] = "China Airport"
AirportnameDictionary["VAC"] = "Vancouver Airport"
print("Airport Dictionary contains: \(AirportnameDictionary)") // Printing values of dictionary.
print("Airport Dictionary contains \(AirportnameDictionary.count) elements")
// updating the value in dictionary
AirportnameDictionary["YYZ"] = "Pearson Airport"
// update using updateValue() method in dictionary.
let newValue = AirportnameDictionary.updateValue("Dublin Airport", forKey: "DUB")
//print("Updated Values is \(newValue)")
print("Airport Dictionary contains: \(AirportnameDictionary)")

// Checking using if let wether th evalue is in dictionary or not.
if let Airportname = AirportnameDictionary["AMD"]
{
    print("The name of the airport \(Airportname)")
}
else {
    print("The name of the airport is not in the dictionary")
}

// Remove Element from dictionary.
AirportnameDictionary["CHN"] = nil
// Remove Elemetnt using if let.
if let removedValue = AirportnameDictionary.removeValue(forKey: "IND")
{
    print("The removed values is \(removedValue)")
    
}
else
{
    print("The IND is not present in dictionary to delete")
}
print("Airport Dictionary contains: \(AirportnameDictionary)")


// Accessing the Key and Name from the dictionary loop.
for (AirportCode,AirportName) in AirportnameDictionary {
    print(AirportCode,AirportName)
}
// Accessing Only the key from dictionary usng for loop.
for AirportCode in AirportnameDictionary.keys {
    print("Airport Code: \(AirportCode)")
}
let airportCodes = [String](AirportnameDictionary.keys) // ACCESSING AIRPORT CODES.
print("Airport Codes \(airportCodes)")
let airportNames = [String](AirportnameDictionary.values) // ACCESSING AIRPORT NAMES.
print("Airport Names \(airportNames)")

// <KEY,VALUES> pairs

var d1: Dictionary<String,String> = ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])
d1["China"] = "Mandarin"
for (K,V) in d1 {
 print("\(K) -> \(V)" )
}
d1["Canada"] = "French"
print(d1)

var d2 = ["India":"Hindi","Canada":"English"]
for(K,V) in d2 {
   print("\(K) -> \(V)" )
}
// Dictinary With any values type.

var d3 = [String: AnyObject]()
d3["Firstname"] = "Guneet" as AnyObject
d3["Lastname"] = "Singh" as AnyObject
d3["age"] = Int(23) as AnyObject
d3["Salary"] = nil
print("d3",d3)

//Declaring tuples.
var x = (10,20,"Patel")
print(x.0)
print(x.1)
print(x.2)
let http404Error = (404,"Notfound")
print(http404Error)
let (statusCode,statusMessage) = http404Error
print("statusCode:",statusCode)
print("statusMessage:",statusMessage)

let (codeOnly,_) = http404Error
print ("codeOnly:",codeOnly)
let errorDescription = (code:404,Message:"Not found")
print(errorDescription.code,errorDescription.Message)


// Class Activity.
// Create Address Dictionary.

var address = [String: AnyObject]()
address["Street"] = "GormanPark" as AnyObject
address["Area"] = "NorthYork" as AnyObject
address["PostalCode"] = "12378M" as AnyObject

// Create Dictionary for person.

var personDictionary:Dictionary<String, AnyObject> = ["FirstName":"Guneet Singh" as AnyObject,"LastName":"Lamba" as AnyObject,"AGE": Int(23) as AnyObject, "Address": address as AnyObject , "TotalAmount": Int(2000) as AnyObject]

 print(personDictionary)





















