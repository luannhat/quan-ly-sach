import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        RegisterButton.addTarget(self,
                                 action: #selector(goToRegister),
                                 for: .touchUpInside)
        
    }
    
    @IBAction func Login(_ sender: UIButton) {
        guard let email = EmailText.text,
                let pass = PasswordText.text else{
            return
        }
        Auth.auth().signIn(withEmail: email, password: pass){
            result,  error in
            
            if let error = error{
                print("Login Error: \(error.localizedDescription)")
                            return
            }
            print("Login Success")

            // Chuyen man hinh
            
        }
    }
    
    
    //truyen trang den register
    @objc func goToRegister() {
        
        let rc = storyboard?.instantiateViewController(withIdentifier: "register") as! RegisterViewController
        
        present(rc, animated: true)
    }
}
