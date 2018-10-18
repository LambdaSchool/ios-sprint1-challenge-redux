//
//  Movies.swift
//  Movie List
//
//  Created by Jerrick Warren on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

/* create a model, Name(Title) of movie,
 Rating(if provided),
 and isSeen button(Change to a switch) if time allows
  */

struct Movies: Equatable {
    let name: String
    let rating: String?
    let isSeen: Bool
    
    init(name:String, rating:String?, isSeen: Bool) {
        self.name = name
        self.rating = rating
        self.isSeen = false
    }
}
