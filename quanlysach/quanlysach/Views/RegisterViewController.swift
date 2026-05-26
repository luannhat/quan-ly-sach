import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var EmailText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var ComfirmPasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray6

        
    }

   
    @IBAction func registerButton(_ sender: UIButton) {
        guard let email = EmailText.text,
                 let password = PasswordText.text,
                 let confirmPassword = ComfirmPasswordText.text else {
               return
           }

           if password != confirmPassword {

               print("Mat khau khong trung")
               return
           }

           Auth.auth().createUser(withEmail: email,
                                  password: password) { result, error in

               if let error = error {

                   print(error.localizedDescription)
                   return
               }

               print("Dang ky thanh cong")
           }
    }
}
