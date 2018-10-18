//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func addMovieButton(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        MovieController.shared.createMovie(title: text)
        textField.text = ""
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
