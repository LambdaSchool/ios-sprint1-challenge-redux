//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jerrick Warren on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ratingTextField: UITextField!
    @IBAction func createMovieButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let rating = ratingTextField.text else {return}
        MovieController.shared.createMovie(name: name, isSeen: false, rating: rating)
    }
    
    
}
