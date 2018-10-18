import Foundation
import UIKit


class MovieViewController: UIViewController {
    
    var movieViewController: MovieViewController!
    
    @IBOutlet weak var addMovie: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        guard let addMovie = addMovie.text, addMovie != "" else {
            print("Name of movie is empty")
            return
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
    }
    
    
    
}


