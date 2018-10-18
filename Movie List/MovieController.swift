import UIKit

class MovieController {
    
    private (set) var movies: [Movie] = []
    
    func createMovie (name: String) {
        let movie = Movie(name: name, watched: false)
        
        print(movies.count)
        movies.append(movie)
    }
    
    func update(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        let oldStatus = movie.watched
        let newStatus = !oldStatus
        let tempMovie = Movie(name: movie.name, watched: newStatus)
        
        movies.remove(at: index)
        movies.insert(tempMovie, at: index)
    }
    
    func delete(movie: Movie) {
        guard let index = movies.index(of:movie) else { return }
    }
}
