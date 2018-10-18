//
//  MovieController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    
    
    var movies = [Movie]()

    
    func create(movieNamed name: String, hasSeen: Bool = false){
        let movieToAdd = Movie(name: name, hasSeen: hasSeen)
        movies.append(movieToAdd)
    }
    func delete(movieAtIndex index: Int ){
        movies.remove(at: index)
    }
    
    func toggleHasSeen(_ movie: Movie){
        movie.hasSeen = !movie.hasSeen
    }
    
    
    
    
    
    
    
    
}
