import UIKit

class ResultsTableVC: UITableViewController, MovieControllerProtocol, ResultsTableViewCellDelegate {
    
    var movieController: MovieController?
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ResultsTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        cell.textLabel?.text = movie.name
        
        return cell
    }
    
    func tappedSeenButton(on cell: ResultsTableViewCell) {
        guard let indexPath = cell.indexPath else {return}
        movies[indexPath.row].isSeen.toggle()
        if movies[indexPath.row].isSeen {
            cell.seenButton.setTitle("Seen", for: .normal)
        }
        else {
            cell.seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieController?.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        guard editingStyle == .delete else { return }
//        if (editingStyle == .delete){
//            guard (movieController?.movies[indexPath.row]) != nil else {return}
//            movieController?.movies.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }
    
    
}
