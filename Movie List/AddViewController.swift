

import UIKit

class AddViewController: UIViewController {
    

    
    @IBOutlet weak var field: UITextField!
    
    
    @IBAction func done(_ sender: Any) {
        guard let movieName = field.text
        else { return}
        
        var content: String = ""
        var indexPath: IndexPath = IndexPath(row: 0, section: 0)
        
        var movie = Movie(title.self, note.self, done.self)
    }
}








