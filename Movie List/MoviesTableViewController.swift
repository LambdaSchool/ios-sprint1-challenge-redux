import UIKit

class MoviesTableViewController: UITableViewController {
    let reuseIdentifier = "cell"
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
            else { fatalError("Failed cell guarantee")}
        cell.textLabel?.text =
        Model.shared.items[indexPath.row]
        return cell
    }
}







