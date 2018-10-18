//
//  MovieCellDelegate.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate: class {
    func seenButtonTapped(on cell: MovieTableViewCell)
}
