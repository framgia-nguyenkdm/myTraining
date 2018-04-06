//
//  Util.swift
//  mySQLite
//
//  Created by khuc.d.m.nguyen on 4/6/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import Foundation
class Util: NSObject {
    class func getPath(fileName: String) -> String{
        let fm = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(fileName)
        print(fm.path)
        return fm.path
    }
    class func copy(fileName: String){
        let dbPath: String = getPath(fileName: fileName as String)
        let fileManager = FileManager.default
        if !fileManager.fileExists(atPath: dbPath) {
            let documentsURL = Bundle.main.resourceURL
            let fromPath = documentsURL!.appendingPathComponent(fileName as String)
            print("aaaa\(fromPath)")
            var error : NSError?
            do {
                try fileManager.copyItem(atPath: fromPath.path, toPath: dbPath)
            } catch let error1 as NSError {
                error = error1
            }
        }
        else
        {
            
        }
    }
}
