
import UIKit



class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet{
            update()
        }
    }
    
 
    func update() {
        guard let movie = movie else {return}
        movieLabel.text = movie.name
        button.setTitle(movie.seen ? "seen" : "not seen", for: .normal)

    }
    
    
    @IBOutlet weak var movieLabel: UILabel!
    
    
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func seen(_ sender: Any) {
        if let movie = movie {
            movie.seen = !movie.seen
            update()

        }
        
        
    }
    
    
    
    
}



