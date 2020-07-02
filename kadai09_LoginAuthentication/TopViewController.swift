import UIKit
class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: Any) {
        let second = LoginViewController()
        present(second, animated: true, completion: nil)
    }
}
