import UIKit

class AddMovieViewController: UIViewController{
    var indexPath: IndexPath? = nil
    
    @IBOutlet weak var addMovieLabel: UILabel!
    @IBOutlet weak var movieTitleText: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
    }
    
    @objc
    func addEntry() {
        if let text = movieTitleText.text, !text.isEmpty{
            let entry = Entry(title: text)
            Model.shared.items.append(entry)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @objc
    func saveEntry() {
        guard let indexPath = indexPath else{
            fatalError("Need to unwrap indexPath")
        }
        if let text = movieTitleText.text, !text.isEmpty {
            let entry = Entry(title: text)
            Model.shared.items[indexPath.row] = entry
            }
        navigationController?.popViewController(animated: true)
        }
    override func viewWillAppear(_ animated: Bool) {
        if let indexPath = indexPath {
            assert(indexPath.row < Model.shared.items.count, "indexPath is out of range")
            
            let entry = Model.shared.items[indexPath.row]
        }
        
        let barButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = barButton
        switch indexPath {
        case nil:
            barButton.title = "Add"
            barButton.action = #selector(addEntry)
        default:
            barButton.title = "Save"
            barButton.action = #selector(saveEntry)
        }
    }
}
