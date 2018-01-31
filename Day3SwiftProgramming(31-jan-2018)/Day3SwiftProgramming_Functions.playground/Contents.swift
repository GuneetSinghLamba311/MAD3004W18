//: Playground - noun: a place where people can play

import UIKit

// USAGE OF Functions
func add()
{
    print("I am in user defined function")
}
add()

// Single Parameter
    func welcome(name:String)   {
    print("Hello \(name) ")
    }

    welcome(name: "Guneet")
// Same  add() Function with different parameters.
    func add(n1:Int,n2:Int){
        var sum:Int
        sum = n1+n2
        print("Sum : \(sum)")
        }
// Calling Of function
    // add(10,20) error
    add(n1:10,n2:20)

// Making parameter label optional using _
func sub(n1:Int,_ n2:Int) {
    var diff:Int
    diff = n1-n2
    print("Diff : \(diff)")
}
sub(n1:10,20)

// Single return type Functions

func mul(a:Int,b:Int) -> Int {
    let c = a * b
    return c
}
var c = mul(a: 5, b: 6)
print(c)



// Multi return values and define new label name.
func swipe (number1 a: Int,b: Int) -> (Int,Int)
{
    //var temp = a
    //a = b
    //b = temp
    return(b,a)
    }
// Declare var (a,b)
var (a,b) = swipe(number1: 10 , b: 20)
print("a:\(a),b:\(b)")
(_, c) = swipe(number1: 10, b: 20)
print("c: \(c)")

// INOUT concept.
// Function for swipe method Using INOUT
func swipe(aa: inout Double , bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}
var x = 8.0,y = 9.0
swipe(aa:&x, bb:&y) // USING & for assigning values to variable.
print("X: \(x), y:\(y)")


// Default Parameter
func simpleInterest(amount:Double, noOfYears:Double, rate:Double = 5) -> Double {
    
    let si = amount*noOfYears*rate / 100
    return si
    }
print("Simple Interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("Simple Interest: \(simpleInterest(amount: 1000, noOfYears: 5,rate:10))")

// Variadic Parameters
func display(n:Int...)
{
    for i in n {
        print(i)
    }
}
display(n: 1,2,3,4,5)
display(n:10,20,30)

// Passing array as Parameter
func display(numberofvalues:Int , parameters:[Int]...)
{
    print("NumberOF values \(numberofvalues)")
    for i in parameters {
        print("i: \(i)")
    }
}
var arr = [1,2,3,4,5]
display(numberofvalues: 3, parameters: arr,arr,arr)

// Adding  two arrays using function.
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
   var result = [Int]()
    if array1.count == array2.count {
        for i in 0..<array1.count {
            result.append(array1[i]+array2[i])
        }
    }
    return result
}
    
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList: a1,a2)
print(a3)




// class Activity Find factorial of number using factorial.

func factorial(a:Int)-> Int {
    var fact = 1
    var n = a
    for i in 1...n {
        fact = fact * i
    }
    return fact
}
    var result = factorial(a: 5)
    print("Factoiral of number is \(result)")
    

    
   


    
    




