import UIKit

class MovieTableViewController: UIViewController {
    
    var movieController = MovieController()
    
    @IBOutlet weak var movieAnswerLabel: UILabel!
    var question: Question?{
        didSet {
            question?.answer == nil ? (answerLabel?.text = ")
        }
    }
    
    @IBAction func seenButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as 
            else { fatalError("Failed cell guarantee")}
        let movie = movieController
        
        cell.textLabel?.text = Model.shared.items[indexPath.row].title
        
        return cell
    }
    let modifySegueIdentifier "addMovieSegue"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let AddMovieViewController = segue.
    }
    
}

