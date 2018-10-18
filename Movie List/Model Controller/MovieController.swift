//
//  MovieController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieController {
    static var shared = MovieController()
    
    var movies = [Movie]()
    
    func createMovie(title: String) {
        let movie = Movie(title: title, seen: false)
        movies.append(movie)
        movies.sort(by: {$0.title < $1.title})
    }
    
}
