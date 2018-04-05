//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let higherPriority = DispatchQueue.global(qos: .userInitiated)
let lowerPriority = DispatchQueue.global(qos: .utility)

let semaphore = DispatchSemaphore(value: 1)

func asynPrint(queue: DispatchQueue, symbol: String) {
    queue.async {
        
        print("\(symbol) waiting")
        semaphore.wait() // requesting the resource
        
        for i in 0...10 {
            print(symbol, i)
        }
        
        print("\(symbol) signal")
        semaphore.signal() // releasing the resource
    }
}

asynPrint(queue: higherPriority, symbol: "🔴")
asynPrint(queue: lowerPriority, symbol: "🔵")
