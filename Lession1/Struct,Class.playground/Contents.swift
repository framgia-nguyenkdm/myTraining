//: Playground - noun: a place where people can play

import UIKit

//--------------------------------------------Struct--------------------------------------
struct Bird {
    var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func introduceBird() {
        print("Hello, this bird is : \(name)")
    }
}

protocol Flyable {
    func canFly(fly: Bool)
}

extension Bird: Flyable {
    func canFly(fly: Bool) {
        if fly == true {
            print("This bird can fly")
        } else {
            print("This bird can not fly")
        }
    }
}
//Reference type and value type, deinit, identity operator

//// Struct is value type
//struct Location {
//    var longtitude: Int
//    var latitude: Int
//    init(longtitude: Int, latitude: Int) {
//        self.latitude = latitude
//        self.longtitude = longtitude
//    }
//}
//var structLocation1 = Location(longtitude: 9, latitude: 123)
//var structLocation2 = structLocation1
//structLocation2.longtitude = 100
//print("Long: Struct1: \(structLocation1.longtitude) ---- Struct2: \(structLocation2.longtitude)") //-----> value type

// Class is reference type
class Location {
    var longtitude: Int
    var latitude: Int
    init(longtitude: Int, latitude: Int) {
        self.latitude = latitude
        self.longtitude = longtitude
    }
    deinit {
        print("Dealloc from heap")
    }
}
var classLocation1: Location? = Location(longtitude: 100, latitude: 82)
var classLocation2 = classLocation1
classLocation1!.longtitude = 100
print("Long: Class1: \(classLocation1!.longtitude) ---- Class2: \(classLocation2!.longtitude)") //-----> reference type

classLocation1 = nil // Deinit 
classLocation2 = nil


//--------------------------------------------Class--------------------------------------
class Vehicle {
    var name: String?
    let passengerCapacity: Int
    
    init (name: String, passengerCapacity: Int) {
        self.name = name
        self.passengerCapacity = passengerCapacity
    }
}
class Car: Vehicle {
    var fuelType: Bool = true
}

let car = Car(name: "Audi", passengerCapacity: 4)
car.fuelType = true
