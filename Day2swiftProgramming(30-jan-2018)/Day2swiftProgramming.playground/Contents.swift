//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

// Multiple Strings
let strOne = """
This is first car
This is second car
This is another car
ok.Enough cars
"""
print(strOne)

var mood = ""
//Initialize unicode characters
var heart = "\u{1f496}"
mood = "happy"
if mood.isEmpty {
    
    print("wakeUpBuddy")
    print("\u{1f590}")
}
else {
    print(heart)
}

//concatination of strings.
mood += "cheerful joyful"
print(mood)
heart += "Be happy man"
print(heart)

// creating object of type string.
var firstname = String()
firstname = "JK"
print(firstname)
for i in firstname {
    print(i)
}

// APPENDING METHODS.
// Appending by characters.
let anotherword:Character = "J"
firstname.append(anotherword)
print(firstname)
print("Firstname is\(firstname) which is \(firstname.count) characters long.")
// Apending by string.
firstname.append("NEWSTIRNG")
print(firstname)
//Appending by contentsof method.
let newString = "Hello"
firstname.append(contentsOf: newString)
print(firstname)

// USAGE OF INDEX ON STRING.

print("Start index:" , firstname[firstname.startIndex])
print("Before end index:",firstname[firstname.index(before: firstname.endIndex)])
//print("after start index:",firstname[firstname.index(after: firstname.endIndex)])
//print("5th character:",firstname[firstname.index(firstname.startIndex,offsetBy: 4)])
//print("3rd character from last:",firstname[firstname.index(firstname.endIndex,offsetBy: -3)])

// CLASS ACTIVITY TO print name in first order and reverse order
let name = "Guneet"
// Length of string
let stringLength = name.count
print("Length of name is",stringLength)

print("first to last")

// From first to last
for i in 1...6 {
    
    print("Characters:", name[name.index(name.startIndex, offsetBy: i-1)])
}


// from last to first
for i in 1...6 {
   
    print("Characters:",name[name.index(name.endIndex, offsetBy: -i)])
    
    }


// USE OF INSERT METHOD AND REMOVE METHODS.
var idx = firstname.index(firstname.startIndex,offsetBy: 3)
print("fourth character:",firstname[idx])
var language = "Swift"
print("Language:",language)
language.insert("!", at: language.endIndex)
print(language)
language.insert(contentsOf: "JAVA", at: language.endIndex)
print("Language:",language)
language.insert(contentsOf: "is nicer than", at: language.index(language.startIndex, offsetBy: 6))
print("Langauge content of:",language)
language.remove(at: language.index(before: language.endIndex))
print("Remove index",language)

// USE of substrings and adding new strings.
let greeting  = "Happy Holidays!"
let index = greeting.index(of: " ") ?? greeting.endIndex
let start = greeting[..<index]
let newgreet = String(start)
print("SUB STRING", newgreet)
// USING UPPERCASE AND LOWER CASE
print("String uppercase:",newgreet.uppercased())
if newgreet == newgreet.uppercased() {
    print("Equal")
}
else{
    print("Not equal")
}
// CHECKING WETHER THE GRADE IS EMPTY OR NOT.
var grade: String?
grade = "A"
let finalegrade = grade ?? "F"
if finalegrade.isEmpty {
    print("Not graded yet")
    
}
else {
    print("Grade:",finalegrade)
}











