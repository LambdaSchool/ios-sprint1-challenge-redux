import UIKit

class MovieModel {
    
    //C.R.U.D.
    
    // READ
    private (set) var movies: [Movie] = []
    
    // create
    func createMovie(name: String) -> Movie {
        let movie = Movie(name: name, isSeen: false)
        //append to empty array
        
        movies.append(movie)
        
        return movie
    }
    
   
    
}
