
import UIKit
class AddController: UIViewController {
    
    
    
    @IBOutlet weak var name: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        
        guard let movieName = name.text else {return}
        if movieName == "" {return}
        DB.shared.createMovie(name:movieName)
        name.text = ""
        
    }
    
    
    
    
}


