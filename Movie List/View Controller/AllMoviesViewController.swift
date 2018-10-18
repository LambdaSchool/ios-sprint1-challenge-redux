//
//  AllMoviesViewController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AllMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieController.shared.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        cell.movieLabel.text = MovieController.shared.movies[indexPath.row].title
        
        let movie = MovieController.shared.movies[indexPath.row]
        switch movie.seen {
        case true:
            cell.buttonOutlet.setTitle("Seen", for: .normal)
        case false:
            cell.buttonOutlet.setTitle("Not Seen", for: .normal)
        }
        
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            MovieController.shared.movies.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    func seenButtonTapped(on cell: MovieTableViewCell) {
        guard let indexPath = cell.indexPath else {return}
        MovieController.shared.movies[indexPath.row].seen.toggle()
        tableView.reloadData()
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
