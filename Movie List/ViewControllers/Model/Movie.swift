//
//  Movie.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation


class Movie {
    
    
    var name: String
    var hasSeen: Bool
    
    init(name: String, hasSeen: Bool = false) {
        self.name = name
        self.hasSeen = hasSeen
    }
    
}
