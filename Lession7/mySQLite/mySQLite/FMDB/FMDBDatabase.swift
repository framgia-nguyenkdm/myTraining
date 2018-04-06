//
//  FMDBDatabase.swift
//  mySQLite
//
//  Created by khuc.d.m.nguyen on 4/6/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

let shareInstance = FMDBDatabase()
class FMDBDatabase: NSObject {
    var database : FMDatabase? = nil
    
    class func  getInstance() -> FMDBDatabase{
        if (shareInstance.database == nil){
            shareInstance.database = FMDatabase(path: Util.getPath(fileName: "database.sqlite"))
        }
        return shareInstance
    }
    
    //insert data
    func insertData(_ contact : Contact) -> Bool{
        shareInstance.database?.open()
        let isInsert = shareInstance.database?.executeUpdate("INSERT INTO Contact(id,Name,Age,Phone) VALUES(?,?,?,?)", withArgumentsIn: [contact.ID,contact.name,contact.age,contact.phone])
        shareInstance.database?.close()
        return isInsert!
    }
    
    //select data
    func getAllData() -> NSMutableArray{
        shareInstance.database?.open()
        let fmresult: FMResultSet! = shareInstance.database?.executeQuery("Select * from Contact", withArgumentsIn: [0])
        let infoarr : NSMutableArray = NSMutableArray()
        if (fmresult != nil){
            while fmresult.next(){
                let tmp : Contact = Contact()
                tmp.ID = Int(fmresult.int(forColumn: "id"))
                tmp.age = Int(fmresult.int(forColumn: "Age"))
                tmp.name = String(fmresult.string(forColumn: "Name")!)
                tmp.phone = String(fmresult.string(forColumn: "Phone")!)
                infoarr.add(tmp)
            }
        }
        shareInstance.database?.close()
        return infoarr
    }
    //delete
    func deletaData(_ contact: Contact) ->Bool{
        shareInstance.database?.open()
        let resultset: Bool! = shareInstance.database?.executeUpdate("Delete from Contact where id = ? ", withArgumentsIn: [contact.ID])
        shareInstance.database?.close()
        return resultset
    }
    
}

