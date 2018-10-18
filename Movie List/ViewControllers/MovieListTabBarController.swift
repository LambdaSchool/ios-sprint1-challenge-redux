//
//  MovieListTabBarController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTabBarViewController: UITabBarController {
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passMovieControllerToChildVC()
    }
    
    func passMovieControllerToChildVC(){
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let viewController = viewController as? MovieControllerProtocol {
                viewController.movieController = movieController
            }
        }
    }
}
