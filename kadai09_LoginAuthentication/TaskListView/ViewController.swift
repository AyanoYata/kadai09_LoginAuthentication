import UIKit
import FirebaseAuth

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ログインビューコントローラーを表示
        self.presentLoginViewController()
    }

    
    func presentLoginViewController(){
        //ログインビューコントローラーををインスタンス化
        let loginVC = LoginViewController()
        //モーダルスタイルを指定
        loginVC.modalPresentationStyle = .fullScreen
        //表示
        self.present(loginVC, animated: false, completion: nil)
    }
}

