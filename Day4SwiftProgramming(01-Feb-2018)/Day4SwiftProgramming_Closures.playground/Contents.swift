//: Playground - noun: a place where people can play

import UIKit


// Sorted closure
var months = [4,3,1,6,5,2]
print(months.sorted())

// Reverse Function.
func reverse(_ s1: Int, _ s2:Int) -> Bool {
    return s1 > s2
    }
var reversedMonths = months.sorted(by: reverse) // consider values from its sorrounding context as no parameters are passed.
print("ReversedMonths",reversedMonths)
// Increasing Function.
func increasing(_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
}
var increasingMonths = months.sorted(by:increasing)
print("IncreasingMonths: ",increasingMonths)


// Alternate syntax for closure.
var reverseclosure = months.sorted(by:
{
    (s1: Int, s2:Int) -> Bool in
    return s1 > s2
    
    })
print("ReverseClosure", reverseclosure)

// inferring parameter types from context.
var infertypes = months.sorted(by:
{
    //(s1,s2) in return s1 < s2
    (s1,s2) in s1 < s2 // implicit return
    
})
print("Infertypes: ",infertypes)
// Shorthand argument names
print("Shorthand argument:",months.sorted(by:{
    $0 < $1
}))
// operator methods
print("Operator methods: ",months.sorted(by: <))

// print number using filter for three mod
var three = [1,3,4,5,6,8,9,12,15]
print("three:",three)
var modThree = three.filter(
{$0 % 3 == 0
})
print("ModThree: ", modThree)
// Print even number using filter
var even = [1,5,9,3,10,2,4,6]
var modEven = even.filter (
{
    $0 % 2 == 0

})
print("EvenMod",modEven)

// nested functions closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int { // Returning inorder of function protoype.
    var runningTotal = 0
   
    func incrementer() -> Int { // INNER FUNCTION
        runningTotal += amount
    
    return runningTotal
    }
return incrementer
}
// Instance of a function
let incrementByten = makeIncrementer(forIncrement: 10)
print("FirstCall : " , incrementByten())
print("SecondCall :", incrementByten())
print("ThirdCall : ", incrementByten())

// Instance of a function.
let incrementByseven = makeIncrementer(forIncrement: 7)
print("FirstCall inc by seven : " , incrementByseven())
print("SecondCall inc by seven :", incrementByseven())
print("fourth call : ", incrementByten()) // refer to same instance of that function.

// again create instance of function.
let incrementBYSevenAgain = incrementByseven
print("Increment by seven 3 :" , incrementBYSevenAgain())

// Auto closures
var errorList = [404,414,402,431,455,440]
print("Total Errors: " , errorList.count)
let debugger = { errorList.remove(at: 0)}
print("Total Error",errorList.count)
print("Now solving \(debugger())!") // only be removed when the closure is called explicitly.
print("Total Error: ", errorList.count)
print("ErrorList:" ,errorList)

// AutoClosure

func solve(error debugger: @autoclosure () -> Int) {
    print("Now solving \(debugger())!")
    }
solve(error: errorList.remove(at: 0))
print("Error List: ", errorList)







