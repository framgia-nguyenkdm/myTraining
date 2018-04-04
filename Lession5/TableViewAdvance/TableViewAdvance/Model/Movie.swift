//
//  Movie.swift
//  TableViewAdvance
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit
import SwiftyJSON

class Movie: NSObject {
    var movieName = ""
    var overview = ""
    var imgLink = ""
    
    init(data: JSON) {
        self.movieName = data["original_title"].string!
        self.overview = data["overview"].string!
        self.imgLink = data["backdrop_path"].string!
    }
}
