//: Playground - noun: a place where people can play

import UIKit
//-----------------------------------------Enum--------------------------------------
enum DownloadStatus {
    case downloading
    case finished
    case canceled
    case failed
}

let currentStatus = DownloadStatus.downloading

switch currentStatus {
case .downloading:
    print("The file is being downloaded")
    break
case .finished:
    print("The file is finished")
    break
case .canceled:
    print("The file is canceled")
    break
case .failed:
    print("Failed to download the file")
    break
}

//Associated value
enum Promotion {
    case sale10
    case sale20
    case sale30
    case sale100
}
enum SaleSchedule {
    case Spring(promotion: Promotion, internalPerson: Bool)
    case Summer(promotion: Promotion)
}

let currentSale = SaleSchedule.Spring(promotion: Promotion.sale10, internalPerson: true)
switch currentSale {
case .Spring(let promotion, let internalPerson):
    print("In Spring break we will have \(promotion) if the internal Person is: \(internalPerson)")
    
case .Summer(let promotion):
     print("In Summer break we will have \(promotion)")
}
