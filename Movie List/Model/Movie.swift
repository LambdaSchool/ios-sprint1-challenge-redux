//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    var name: String
    var hasWatched: Bool
    
    init(named name: String,hasWatched: Bool = false){
        self.name = name
        self.hasWatched = hasWatched
    }
}
