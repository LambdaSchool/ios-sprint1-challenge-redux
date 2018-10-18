//
//  MovieController.swift
//  Movie List
//
//  Created by Jerrick Warren on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // lets make the Model shared
    // lets add the create feature
    // lets add the delete feature
    // lets add persistence ... if time allows
    // add persistence... if time allows
    
    static var shared = MovieController()
    
    var movies = [Movies]()
    
    func createMovie(name:String, isSeen:Bool, rating:String?) {
        let movie = Movies(name: name, rating: rating, isSeen: false)
        movies.append(movie)
        
        // set in alphabetical order
        movies.sort(by: {$0.name < $1.name})
    }
    
    
}
