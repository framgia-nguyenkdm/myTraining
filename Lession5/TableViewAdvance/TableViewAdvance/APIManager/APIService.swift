//
//  APIService.swift
//  TableViewAdvance
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class APIService {
    static let sharedInstance = APIService()
    func getListMovie(url: String, page: Int, completionHandler: @escaping (_ movie: JSON) -> Void, errorHandler:@escaping (_ error: Error) -> Void) {
        
        let URLlink = url + "\(page)"
        print("URL: \(URLlink)")
        Alamofire.request(URLlink, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { (response) in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    completionHandler(json)
                    break
                case .failure(let error):
                    errorHandler(error)
                    break
                }
        }
    }
}
