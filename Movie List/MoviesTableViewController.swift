//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_18 on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

//import Foundation
//
//class MoviesTableViewController: UITableViewController {
//
//    let reuseIdentifier = "cell"
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return Model.shared.items.count
//
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
//                else { fatalError("Failed cell guarantee") }
//
//            cell.textLabel?.text = Model.shared.items[indexPath.row].title
//
//            return cell
//        }
//
//        let addSegueIdentifier = "add"
//        let modifySegueIdentifier = "modify"
//
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let detailViewController = segue.destination as? DetailViewController
//                else { fatalError("Segue destination failed") }
//
//            guard let identifier = segue.identifier
//                else { fatalError("No segue identifier provided") }
//
//            switch identifier {
//            case addSegueIdentifier:
//                detailViewController.indexPath = nil
//
//            case modifySegueIdentifier:
//                guard let indexPath = tableView.indexPathForSelectedRow
//                    else { fatalError("Unable to retrieve selected index path") }
//                detailViewController.indexPath = indexPath
//
//            default:
//                fatalError("Unknown segue identifier: \(identifier)")
//            }
//        }
//    }
//}
//
