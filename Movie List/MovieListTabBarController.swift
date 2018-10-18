import UIKit

class MovieListTabBarController: UITabBarController, UITabBarControllerDelegate {

    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        for childVC in childViewControllers {
            if let childVC = childVC as? MovieControllerProtocol {
                childVC.movieController = movieController
            }
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.selectedIndex == 1 {
            guard let movieTableController = viewController as? MovieTableViewController else { return }
        }
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
