import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var nameViewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupNavigationBarTitle()
    }
}

fileprivate extension StartViewController {
    func setupNavigationBarTitle() {
        navigationController?.navigationBar.setupNavigationBarTitle(className: self.className)
    }
    
    func setupView() {
        nameViewLabel.text = Constant.StartScreenName
    }
}

