//
//  User.swift
//  JSON_Map
//
//  Created by khuc.d.m.nguyen on 4/5/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import Foundation
import ObjectMapper
class User: NSObject, Mappable {
    
    
    
    var id = 0
    var name = ""
    var fullname = ""
    var loginType = ""
    
    init(id: Int, name: String, fullname: String, loginType: String) {
        self.id = id
        self.name = name
        self.fullname = fullname
        self.loginType = loginType
    }
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        fullname <- map["full_name"]
        loginType <- map["owner.login"]
    }
}
