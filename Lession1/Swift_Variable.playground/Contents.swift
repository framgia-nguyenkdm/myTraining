//: Playground - noun: a place where people can play

import UIKit

//
//// --------------------------------------------- Var - Let ------------------------------------------------
//var myStr = "Hello world!"
//let str = "Hello Nguyen!"
//
//myStr = myStr + "How are you today"
////str = str + "How are you?" // ----> error ---> init with let cannot make change variable
//
//// --------------------------------------------- Tuble ------------------------------------------------
//
//// Init
//var tuble = ("kkk","Xin chao",10) //---> Unname tuble
//print(tuble)
//print(tuble.0)
//print(tuble.1)
//print(tuble.2)
//
//var myTuble = (name: "Nguyen", count: 10, nickname:"Ken") //---> Named tuble
//print(myTuble)
//print(myTuble.count)
//print(myTuble.nickname)
//
//// Change variable in tuble
//myTuble.name = "Minh Nguyen"
//print(myTuble)
//
//// Tuble is value type
//var myNewTuble = myTuble
//myNewTuble.name = "John"
//myNewTuble.count = 23
//print(myNewTuble)
//print(myTuble)
//
//// Seperate the values of tuble
//// _ mean dismiss the value you dont want to use
//let (myName, age, _) = myNewTuble
//print("My name is \(myName)")
//print("Age: \(age)")

// --------------------------------------------- Optional ------------------------------------------------

//Init
var index: Int?
print("Value of index: \(index)")
//print("Value of index: \(index!)") //--> found nil when unwrap the variable

//Force Unwrap
var myIndex: Int? = 10
print("Value of my index: \(myIndex)")
print("Value of my index: \(myIndex!)") //---> force unwrap the variable and sure that it got the value


class Dog {
    func park() -> String {
        return "Gau gau gau !!"
    }
}
//Implicitly unwrapped optional
var myDog: Dog! = Dog() //--> Init with implicitly unwrap optional with !
// it's automatically unwrap --> dont need to use !
myDog.park()
// if it is nill ---> automatically unwrap will make error because of nil
//myDog = nil
//myDog.park()


//Optional chaining
var dog1: Dog? = Dog()
dog1?.park()

//Optional binding
if let unwrappedDog1 = dog1 {
    unwrappedDog1.park()
}
if var unwrappedDog2 = dog1 {
    unwrappedDog2.park()
}

func checkNilOfDog(dog: Dog) {
    guard let unwrappedDog3 = dog1 else {
        print("Nil dog")
        return
    }
    print(unwrappedDog3.park())
}
checkNilOfDog(dog: dog1!)

//nil coalesing
var myName: String? = "Nguyen"
var valueName = myName ?? "Nil Coalesing"

myName = nil
valueName = myName ?? "Nil Coalesing"
