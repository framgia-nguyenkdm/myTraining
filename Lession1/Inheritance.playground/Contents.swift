//: Playground - noun: a place where people can play

import UIKit

//----------------------------------Inheritance---------------------------------
class Vehicle {
    var id: String
    var maxSpeed: Double
    var name: String
    var passengerCapacity: Int
    
    init(id: String, name: String, passengerCapacity: Int, maxSpeed: Double) {
        self.id = id
        self.name = name
        self.passengerCapacity = passengerCapacity
        self.maxSpeed = maxSpeed
    }
    
    func makeNoise() -> String {
        return "Noise"
    }
    
    final func theifAlert(){
        print("Alert, Ting Ting, Get away from car")
    }
}
class Bike: Vehicle {
    var hasBasket: Bool = false
}
let myBike = Bike(id: "bike1", name: "Martin", passengerCapacity: 2, maxSpeed: 2)
myBike.makeNoise()

class Car: Vehicle {
}

class Train: Vehicle {
    override func makeNoise() -> String {
        return "Choo Choo Choo"
    }
}
let train1 = Train(id: "train1", name: "PRT", passengerCapacity: 100, maxSpeed: 60)
train1.makeNoise()
train1.theifAlert()

