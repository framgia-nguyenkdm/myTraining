//: Playground - noun: a place where people can play

import UIKit

////----------------------------------------Function--------------------------------
//
//// Normal func
//func sayHello() {
//    print("Hello world")
//}
//sayHello()
//
//// Return type func
//func sayHiTo(name: String) -> String {
//    let helloStr = "Hello " + name + "!!!"
//    return helloStr
//}
//sayHiTo(name: "Nguyen")
//
////Return tuple func
//func findMinMax(arr: [Int]) -> (min: Int, max: Int) {
//    var currentMinValue = arr[0]
//    var currentMaxValue = arr[0]
//
//    for number in arr {
//        if currentMinValue > number {
//            currentMinValue = number
//        } else if currentMaxValue < number {
//            currentMaxValue = number
//        }
//    }
//    return  (currentMinValue,currentMaxValue)
//}
//
//findMinMax(arr: [1,25,4,7,9,-2])

//func sayHello(to person: String, and anotherPerson: String) -> String {
//    return "Hello \(person) and \(anotherPerson)"
//}
//
//sayHello(to: "Bill", and: "Ted")

////Defaut parameter
//func sumNumber(a: Int = 0, b: Int = 10) {
//    print("Sum a and b: \(a + b)")
//}
//sumNumber()
//
////Variadic parameter
//func sumDouble(numbers: Double...) ->  Double {
//    var total: Double = 0
//    for numb in numbers {
//        total += numb
//    }
//
//    return total
//}
//sumDouble(numbers: 5,8,4.1)
//
//// In-out parameter
//func swapInts( a: inout Int, b: inout Int) {
//    let temp = a;
//    a = b;
//    b = temp;
//}
//var a: Int = 5
//var b: Int = 24
//
//swapInts(a: &a, b: &b)
//print("a:\(a), b:\(b)")

//// Function type
//func addInts(a: Int, b: Int) -> Int {
//    return a + b
//}
//
//var math: (Int,Int) -> Int = addInts(a:b:)
//print("\(math(3, 6))")

////Nested type
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepBackward(input: Int) -> Int {
//        return input  - 1
//    }
//    func stepForward(input: Int) -> Int {
//        return input  + 1
//    }
//    return backward ? stepBackward : stepForward
//}
//chooseStepFunction(backward: true)

//----------------------------------------Closure--------------------------------
let sayHello = { () -> Void in
    print("Hello ku")
}
sayHello()

var min = {(a: Int, b: Int) -> Int in
    return a < b ? a:b
}
print("Min: \(min(2,20))")

// escaping
func getSumOf(arr: [Int], handler: @escaping ((Int) -> Void)) {
    var sum:Int = 0
    for value in arr {
        sum += value
    }
    
    handler(sum)
}

func doSomething() {
    getSumOf(arr: [122,61,43,56,91,85]) { (sum) in
        print(sum)
    }
}
doSomething()
