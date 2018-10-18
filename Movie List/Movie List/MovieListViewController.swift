//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Lotanna on 10/18/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class MovieListViewController: UITableViewController {

    @IBOutlet weak var movieTable: UITableView!
    @IBOutlet weak var movieTitle: UILabel!
    
    
   //Create a row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return MovieCollection.count
        
    }
    
   //Set the contents of the prototype cell to be the Movie whose index matches the current row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let movieCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "singleMovie")
        
        movieTitle.text = MovieCollection[IndexPath.row].title
    
    }
    
    
    //Change the Not Seen button to Seen when selected and vice versa
    @IBAction func movieStatus(_ sender: UIButton) {
        
        if MovieCollection[indexPath.row].seen == true {
            
            MovieCollection[indexPath.row].seen = false
            
        }
        
        if MovieCollection[indexPath.row].seen == false {
            
            MovieCollection[indexPath.row].seen = true
            
        }
    }
    
    
    //Allow the row to be deleted by swiping
    
    
    
    //Reload the view to show the updated information
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //Default Code, leave alone
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

