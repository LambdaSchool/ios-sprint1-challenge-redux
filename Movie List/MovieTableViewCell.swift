import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movieModel = MovieModel()
    var movies: [Movie] = []
    

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    @IBAction func seenButtonTapped(_ sender: Any) {
        
        
    }
    
    
    
}
