//: Playground - noun: a place where people can play

import UIKit

//----------------------------------------------Extension---------------------------------------
extension Double {
    var km: Double {    return self * 1000 }
    var m: Double  {    return self }
    var cm: Double {    return self / 100 }
    var mm: Double {    return self / 1000 }
    var ft: Double {    return self / 3.28084}
}

let oneInch = 25.4.mm
let threeFt = 3.ft

print("Three feet is \(threeFt) meters")

//-----Add more init type
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Point {
    var x = 0.0
    var y = 0.0
}
struct Rectangle {
    var size = Size()
    var origin = Point()
}

let defaultRect = Rectangle()
let myRect = Rectangle(size: Size(width: 5.0,height: 6.0), origin: Point(x: 10.3, y: 10.2))

extension Rectangle {
    init (center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(size: size, origin: Point(x: originX, y: originY))
    }
}

