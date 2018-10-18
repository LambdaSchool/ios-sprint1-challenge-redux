//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Lotanna on 10/18/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class NewMovieViewController: UIViewController {

    @IBOutlet weak var enteredMovie: UITextField!
    
    @IBAction func newMovieButton(_ sender: UIButton) {
    
    //Use the content of newMovieButton to create an instance of Movie
        func createMovie(moviename: String) -> Movie {
        moviename = enteredMovie.text
        
        let newMovie = Movie(title: moviename)
        
        MovieCollection.append(newMovie)  //append it to Movie Collection
        enteredMovie.text = ""    //Reset the input so you can add another movie

        
        return newMovie
        }
    }
    
    //Default Code, leave alone
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

