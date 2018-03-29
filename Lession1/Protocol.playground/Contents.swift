//: Playground - noun: a place where people can play

import UIKit

//-----------------------------------Protocol----------------------------
protocol CanMakeSound {
    func makeSound()
}

// Use with struct
struct Dog: CanMakeSound {
    func makeSound() {
        print("Gau gau gau")
    }
}

//Use with class
class Cat: CanMakeSound {
    func makeSound() {
        print("Méo méo")
    }
}

// Use with Enum
enum DogStatus: CanMakeSound {
    case normal
    case beHungry
    case happy
    
    func makeSound() {
        switch self {
        case .normal:
            print("Gấu gấu")
        case .beHungry:
            print("Gấu gấu cho ăn")
        case .happy:
            print("Gấu gấu quẫy đuôi")
        }
    }
    
}
// Protocol khai bao property
protocol HasName {
    var name: String {  get set }
    func fullName() -> String
}
protocol CanMove {
    var legCount: Int { get }
    func move()
}
struct Duck: HasName, CanMove {
    var name: String
    let legCount: Int = 2
    
    func fullName() -> String {
        return name
    }
    func move() {
        print("Move with \(legCount) legs")
    }
}
var myDuck = Duck(name: "Donald Duck")
print("Hello my name is \(myDuck.fullName())")
myDuck.move()

//Mutating method
protocol CanEat {
    mutating func eat()
}
enum CatStatus: CanMakeSound,CanEat {
    case normal
    case beHungry
    case happy
    
    func makeSound() {
        switch self {
        case .normal:
            print("Méo méo")
        case .beHungry:
            print("Méo méo cho ăn")
        case .happy:
            print("Méo méo xoa bóp tao đi con sen")
        }
    }
    
    mutating func eat() {
        switch self {
        case .normal:
            print("Méo méo")
        case .beHungry:
            print("Méo méo cho ăn")
            self = .normal
        case .happy:
            print("Méo méo xoa bóp tao đi con sen")
        }
    }
    
}
