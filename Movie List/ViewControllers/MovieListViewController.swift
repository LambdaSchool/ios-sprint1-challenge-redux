//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {
    
    @IBOutlet weak var tableView: UITableView!
 
    var movieController: MovieController?
    
    var moviesToShow: [Movie] = [] { didSet { tableView.reloadData() }}

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    func seenTapped(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }

        let movie = moviesToShow[indexPath.row]
        movieController?.toggleHasSeen(movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        tableView.reloadData()
        if editingStyle == .delete {
            movieController?.delete(movieAtIndex: indexPath.row)
        }
    }
    
    let cellIdentifier = "MovieCell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }

        let movie = movieController?.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        
        return movieCell
    }
    
    
    
    
    
    
    
  
  
}
