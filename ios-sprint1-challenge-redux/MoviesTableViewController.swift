

import UIKit

class MoviesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, TableUpdater {
    func updateTable() {
        tableView.reloadData()
        
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            DB.shared.updater = self
        }
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DB.shared.movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        movieCell.movie = DB.shared.movies[indexPath.row]
        
        return movieCell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //if (editingStyle == UITableViewCell.EditingStyle.delete) {
        if editingStyle == .delete {
            DB.shared.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
        
        
    }
    
    
}

