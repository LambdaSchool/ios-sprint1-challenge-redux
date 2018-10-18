import UIKit

class Movie {
    var name: String
    var isSeen: Bool
    
    init(name: String, isSeen: Bool = false) {
        (self.name, self.isSeen) = (name, isSeen)
    }
}
