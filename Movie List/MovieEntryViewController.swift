import UIKit

class MovieEntryViewController: UIViewController {
    
    var movie: Movie?
    var movieModel = MovieModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
        
        guard let name = textField.text else { return }
        
        if self.movie != nil {
            movieModel.createMovie(name: name)
        }
    }
}
