//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"
print(str)
// use of terminator for changing the ending character.
print("This is our String \(str)",terminator: " ")

// use searator for sepearting multiple prompts.
print("1","2","3","4","5",separator: "..")
print("1","2","3","4","5",separator: "\n")
var n1 = 10
print("number: ",n1,"String: ",str)
var n2 = 20
print("Number 2 :",n2)
var sum = n1 + n2
print("Sum is :",sum)
print("Sum =",n1+n2)

/*
// Cannot assign string value for type INT.
//n1 = "test"
//print("n1",n1)
*/
// Define Explictly the type.
var greet:String = "Hello😃"
print("Greetings",greet)
var expenses:Double = 45.98
print("Expenses this week",expenses)
var check:Bool = false
print("THis is ",check)
let pi = 3.14
print("pi =",pi)
//var mynum:Int?
//var mynum:Int? = 10
var mynum:Int? = nil
if mynum != nil {
    
    print("MyNum: ",mynum!)
    
}
else
{
    print("MYnum is nil")
}
let possibleNumber = "123"
let  convertNumber:Int? = Int(possibleNumber)

if convertNumber != nil
{
    print("Converted Number:",convertNumber!)
    }
else{
    
    print("ConvertedNumber is nil")
}
for i in 1...5 {
    print ("i= ",i)
}
let languages:[String] = ["English","French","Spanish"]
for i in languages {
    print("language:", i)
}

let marks:[Int] = [1,2,3,4]
for i in marks {
    
}
var interval:Int = 5
for i in stride(from: 0, to: 50, by: interval)
{
print(i," ", terminator: " ")
}
var N = 1
while (N<5) {
print("Value of N is \(N)")
N = N+1
}
var j = 5
repeat {
    print("Repeat:", j)
j = j+2
}while(j<=10)

var number = 8
if number > 10
{
    print("Table of five is")
    for i in 1...10 {
        print("5*\(i) = ",5*i)
    }
}
    else  {
    
        print("Factorial of five is")
    var fact = 5
            for i in 1..<fact
            {
                fact = fact * i
               
            }
             print("Factoral of five is:", fact)
        }
var num1 = 10
switch num1{
case 100:
    print("Value is 10")
case 10,15:
    print("value of num1 is either 10 or 15")
case 5..<20:
    print("Values is 5")
default:
    print("Default case")
}











