import UIKit

struct Movie: Equatable {
    let name: String
    var watched: Bool
    
    init(name: String, watched: Bool = false) {
        self.name = name
        self.watched = watched
    }
}
