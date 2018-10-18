//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Jerrick Warren on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // connect the view controller
    // connect conform to delegate
    // connect to datasource
    
    let reusueIdentifier = "cell"

    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieController.shared.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reusueIdentifier) as UITableViewCell? 
        
        return cell
    }
    
    
    
}
