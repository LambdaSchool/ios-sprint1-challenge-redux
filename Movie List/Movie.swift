//
//  Movie.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_18 on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
//// mabye codable instead of equatable
struct Movie: Equatable {
    let movie: String

    init(movie: String) {
        self.movie = movie
    }

}


//struct Movie: Codable {
//    let title: String
//    let note: String
//    let done: Bool
//}
