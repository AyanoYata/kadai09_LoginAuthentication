import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //新規ボタン
    @IBAction func tapSignUpButton(_ sender: Any) {
    // emailSignUp は nil の可能性があるため、guard letでアンラップする
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        //　新規登録処理
        self.emailSignUp(email: email, password: password)
        print("登録成功！")
    }
    
    //ログインボタン
    @IBAction func tapLoginButton(_ sender: Any) {
    guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        //　新規登録処理
        self.emailLogin(email: email, password: password)
    }

    //新規登録の処理
    func emailSignUp(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password){ (result,error) in
            if (error as NSError?) != nil{
                
            } else {
                self.presentViewController()
            }
        }
    }
    
    //ログインの処理
    func emailLogin(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){ (result,error) in
            if (error as NSError?) != nil{
                
            } else {
                self.presentViewController()
            }
        }
        
    }
    
    func presentViewController(){
        self.dismiss(animated: true, completion: nil)
    }
    
}

