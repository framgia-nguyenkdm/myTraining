//: Playground - noun: a place where people can play

import UIKit

////--------------------------------------Array----------------------------------
//var myArr = ["Nguyen","Thanh","Tan","Hai"]
//let arr2 = myArr
//
//myArr.append("Ti")
//print(arr2) //---> value type
//if myArr.isEmpty {
//    print("Empty Array")
//} else {
//    print(myArr)
//}
//
////--------------------------------------Dictionary----------------------------------
//var myDict = ["TSN":"Tan Son Nhat Aiport","BKA": "Bangkok Airport", "KLIA": "Kualar Lumpuar Airport"]
//
//if let myOldValue = myDict.updateValue("Tan Son Nhat", forKey: "TSN") {
//    print("The old value: \(myOldValue)")
//    print(myDict)
//}
//
//
//for (codeAir,nameAir) in myDict {
//    print("\(codeAir) : \(nameAir) ")
//}
//
//// Extract key of Dict to Array
//let airportCodes = [String](myDict.keys)
//let airportNames = [String](myDict.values)
//
////--------------------------------------Set----------------------------------
//var theAvengers = Set<String>() // init empty set
//if theAvengers.isEmpty {
//    theAvengers = ["Thor","Captain America","Hulk","Black Widow", "Iron Man", "Ant Man", "Spiderman"]
//}
//theAvengers.count
//theAvengers.remove("Ant Man")
//if theAvengers.contains("Ant Man") {
//    print("Ant Man is still here")
//} else {
//    print("Ant Man is deleted")
//}
//
//// Sorted the set
//var modelSorted = theAvengers.sorted()
//var modelSorted2 = theAvengers.sorted { (s1, s2) -> Bool in
//    return s1 > s2
//}

let oddDigits: Set = [1,5,3,7,9,15]
let evenDigits: Set = [24,2,6,8,10]
let myDigits: Set = [2,3,5,9]

oddDigits.union(evenDigits) // tong hop cac phan tu cua 2 set
myDigits.intersection(oddDigits) // tong hop cac phan tu ton tai o trong ca 2 set
myDigits.symmetricDifference(evenDigits) // tong hop cac phan tu cua rieng a va cua rieng b
myDigits.subtracting(evenDigits) // tong hop cac phan tu cua a ma khong thuoc b

