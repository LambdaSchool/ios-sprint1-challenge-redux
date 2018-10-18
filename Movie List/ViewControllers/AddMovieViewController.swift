//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol  {

    
    var movieController: MovieController?
    @IBOutlet weak var moviesToAddTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func addMovie(_ sender: Any) {
        guard let movieTitle = moviesToAddTextField.text
            else {return}

        movieController?.create(movieNamed: movieTitle)
        moviesToAddTextField.text = ""
        view.endEditing(true)
    }

    
}
