import UIKit

class ResultsTableViewCell: UITableViewCell {
    
    var movieController: MovieController?
    var indexPath: IndexPath?
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: ResultsTableViewCellDelegate?
    
    @IBAction func seenTapped(_ sender: UIButton) {
        seenButton.setTitle("Seen", for: .normal)
        delegate?.tappedSeenButton(on: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
