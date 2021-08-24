//
//  LoginViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 24.08.2021.
//

import UIKit

let users = ["User":"Pass", "User2":"Pass2", "123":"123"]

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameAlert: UIButton!
    @IBOutlet weak var passwordAlert: UIButton!
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    private let emoji = String(UnicodeScalar(0x2757) ?? "!")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender {
        case userNameAlert:
            showAlert(with: "Oops\(emoji)", and: "Your username is User ")
        case passwordAlert:
            showAlert(with: "Oops\(emoji)", and: "Your password is Pass")
        default:
            if checkUser(
                in: users,
                with: userNameTextField.text ?? "",
                and: passwordTextField.text ?? ""
            ) {
                showAlert(with: "Hooray", and: "Your can log in")
            } else {
                showAlert(with: "Invalid Login or Password", and: "Please try again")
            }
        }
        
    }
    

}


extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func checkUser(in usersList: [String:String], with login: String, and pass: String) -> Bool {
        let auth: Bool
        guard let currentUserPass = usersList[login] else { return false }
        auth = currentUserPass == pass ? true : false
        return auth
    }
}
