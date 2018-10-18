import UIKit

class MovieListViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    var movieModel = MovieModel()
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    
    let reuseIdentifierCell = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCell) as? MovieTableViewCell else {
            fatalError("Could not instantiate guranteed cell type")
        }
        
        let title = "Not Seen"
        cell.seenButton?.setTitle(title, for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        if (editingStyle == .delete) {
           // movieModel?.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    

}
