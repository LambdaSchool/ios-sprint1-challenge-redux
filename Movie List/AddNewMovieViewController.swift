import UIKit

class AddNewMovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

 
    @IBAction func addMovie(_ sender: Any) {
        guard let name = movieTextField.text else { return }
        
        movieController?.create(name: name)
        view.endEditing(true)
    }
    
    
    @IBOutlet weak var movieTextField: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
