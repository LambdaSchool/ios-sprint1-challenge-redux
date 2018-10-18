//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit


protocol MovieTableViewCellDelegate: class {
    func seenTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    

    var movie: Movie? { didSet { updateViews() } }
    weak var delegate: MovieTableViewCellDelegate?
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenTapped(on: self)
    }
    
    func updateViews() {
        
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        let buttonText = movie.hasSeen ? "Seen ✅" : "Not Seen ✘"
        seenButton.setTitle(buttonText, for: .normal)
        
    }
   
}

