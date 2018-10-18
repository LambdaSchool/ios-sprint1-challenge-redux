//
//  Movie.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    var title: String
    var seen: Bool
    
    init(title: String, seen: Bool) {
        (self.title, self.seen) = (title, seen)
    }
}
