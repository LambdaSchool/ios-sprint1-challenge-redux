import UIKit

class ResultsTableViewCell: UITableViewCell {
    
    var movieController: MovieController?
    var indexPath: IndexPath?
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: ResultsTableViewCellDelegate?
    
    var movie: Movie?
    
    @IBAction func seenTapped(_ sender: UIButton) {
        delegate?.tappedSeenButton(on: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
