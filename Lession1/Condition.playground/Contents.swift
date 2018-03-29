//: Playground - noun: a place where people can play

import UIKit

////--------------------------------- If, else, if let, guard let--------------------------
//
//// If else
//var myAge = 20
//var mySisterAge = 18
//
//// Basic if else
//if myAge > mySisterAge {
//    print("You are older than your sister: \(myAge - mySisterAge) years")
//    if mySisterAge >= 18 {
//        print("She is \(mySisterAge) and has the right to go to a beer club")
//    } else if mySisterAge < 18 && mySisterAge > 13 {
//        print("She is a teenager")
//    } else {
//        print("She is to young!!!")
//    }
//} else {
//    print("You are younger than your sister: \(mySisterAge - myAge) years")
//}
//
//// Advance if else
//let gap: String?
//gap = myAge > mySisterAge ? "I'm older than my sister" : "She is older than me"
//print(gap!)
//
//// Switch - case
//let index = 200
//switch index {
//case 100,200:
//    print("Value of index is 100 or 200")
//    break
//case 10:
//    print("Value of index is 10")
//    break
//case 5:
//    print("Value of index is 5")
//    break
//default:
//    print("Invalid")
//}
//
//// If let
//let myFullName: String? = nil
//if let myName = myFullName {
//    print("My full name is: \(myFullName!)")
//} else {
//    print("I dont have any name")
//}

//////--------------------------------- LOOP --------------------------
//// While
//var count = 0
//while count <= 10 {
//    print(count, terminator: " ")
//    count += 1
//}
//
//count = 0
////Repeat while
//repeat {
//    print(count, terminator: " ")
//    count += 1
//} while count < 10

//// For
//for i in 0...3 {
//    print(i)
//}
//
//for i in 0 ..< 3 {
//    print(i)
//}
//
//let myArr = ["Ken","Nguyen","Khuc","Dinh", "Minh"]
//for name in myArr {
//    print(name)
//}
//
//for name in myArr[...3] {
//    print(name)
//}
//
//for name in myArr[3...] {
//    print(name)
//}
//
//for name in myArr[..<2 ] {
//    print("Name: \(name)")
//}

for i in stride(from: 1, to: 20, by: 3) {
    print(i)
}
for i in stride(from: 1, through: 20, by: 3) {
    print(i)
}
for i in stride(from: 20, to: 1, by: -2) {
    print(i)
}

