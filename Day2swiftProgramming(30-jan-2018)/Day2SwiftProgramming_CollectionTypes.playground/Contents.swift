//: Playground - noun: a place where people can play

import UIKit

// Array Declaration
var a = [10,20,30,40,50]
print("a[0]: \(a[0])")
print("Whole array a: " ,a)

let j1 = [10,20]

print("j1:",j1)

// use methods to add values
var b = [Int]()
print("SIZE OF ARRAY b :\(b.count)")
b.append(100)
print("b[0]: \(b[0])")
b.append(1000)
print("b: ", b)
b[0] = 1000
print("b: ",b)
b.insert(200, at: 0)
print("b: ", b)
print("SIZE O ARRAY b:\(b.count)")
b[2] = 500

// INDEX OUT OF RANGE IF EXCEEDS MORE THAN 3 VALUES.
//print(b[3])
// ASSIGNING DEFAULT VALUES.
var num1 = [Int](repeating: 1, count: 3)
print("NUM 1 array: \(num1)")
var num2 = [Int](repeating: 5,count: 3)
print("NUM  array: \(num2)")
var nummerge = num1+num2
print("num merge array:\(nummerge)")

// Declare to store any data types values.
var c = [Any]();
print("Size of array c :\(c.count)")
c.append(100)
c.append("Patel")
c.append(100.23)
print("C array :\(c)")

// ACCESSING SPECIFIC VALUES FROM ARRAY
var x = a[1...3]
for t in x{
    print("X: \(t)")
}
// String Array and for - each with (key-value)
var shoppinglist: [String] = ["Eggs","Milk"]
for(index,value) in shoppinglist.enumerated() {
    print("Item\(index):\(value)")
}
print("The shopping list contains\(shoppinglist.count) items")
if shoppinglist.isEmpty {
    print("Empty list")
}
else
{
    print("The shopping list is not empty.")
    }
shoppinglist.append("flour")
print("ShoppingList array :\(shoppinglist)")
shoppinglist += ["Chocolate spread","cheese","butter"]
print("shoppinglistarray:\(shoppinglist)")

shoppinglist.insert("MapleSyrup", at: 0)
let maplesyrup = shoppinglist.remove(at: 2)
let apple = shoppinglist.removeLast()
print("shoppinglist array: \(shoppinglist)")
print(shoppinglist[2])

// SET
// DECLARING set in swift

var grades: Set<Character> = []
grades.insert("A")
grades.insert("B")
print("grades:",grades)
print("number of grades",grades.count)

// ERROR CANNOT CONVERT TO HASHABLE.
//var gradetype:Set <Any> = []

// CREATE FAV GENRE USING SET
var favorgenres: Set<String> = ["Rock","Classical","Hip hop"]
print("Favgenres: \(favorgenres)")
print("I have \(favorgenres.count) fav music genres.")
if favorgenres.isEmpty {
    print("As far as music goes,I'm picky")
    
}

else{
    print("I have particular music preferences.")
    
}
favorgenres.insert("jazz")
print("favgenres:\(favorgenres)")
if let removedgenre = favorgenres.remove("Rock") {
    print("\(removedgenre)? I 'am over it")
    }
else {
    print(" I never much cared for that")
}
print("favgenres:\(favorgenres)")
for genre in favorgenres.sorted() {
    print("\(genre)")
    }
let oddDigit : Set = [1,3,5,7,9]
let evenDigit : Set = [0,2,4,6,8]
let singleDigitNumbers: Set = [2,3,5,7]
print(oddDigit.union(evenDigit).sorted())
print(oddDigit.intersection(evenDigit).sorted())
print(oddDigit.union(singleDigitNumbers).sorted())
print(oddDigit.symmetricDifference(singleDigitNumbers).sorted())
let houseanimals: Set = ["🐶","🐱"]
let farmAnimals: Set = ["🐮","🐰","🐔","🐶"]
let cityAnimals: Set = ["🐧","🦁"]
print(houseanimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseanimals))
print(farmAnimals.isDisjoint(with: cityAnimals))





















