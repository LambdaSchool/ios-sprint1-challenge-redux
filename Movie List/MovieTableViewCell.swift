import UIKit

protocol MovieTableViewCellDelegate: class {
    func updateCell(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        guard let movie = movie else { return }
        movieTitle.text = movie.name
        if movie.watched == true {
            watched.setTitle("Watched", for .normal)
        } else {
            watched.setTitle("Watch", for .normal)
        }
    }
    
    @IBAction func changeWatchedStatus(_ sender: Any) {
        delegate?.updateCell(on: self)
    }
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var watch: UIButton!

}
