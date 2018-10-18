//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieCellDelegate?
    var indexPath: IndexPath?
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func seenButtonPressed(_ sender: Any) {
        delegate?.seenButtonTapped(on: self)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
