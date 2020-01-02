

import UIKit
import Foundation

//    protocol MovieTableViewCellDelegate: class {
//        func tappedLikedButton(on cell: MovieTableViewCell)
//}


struct Movie: Codable {
    let title: String
    let note: String
    let done: Bool
}

