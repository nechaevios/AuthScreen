//
//  LoginViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 24.08.2021.
//

import UIKit

let users = ["User":"Pass", "User2":"Pass2", "123":"123"]

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameAlert: UIButton!
    @IBOutlet weak var passwordAlert: UIButton!
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    private let emoji = String(UnicodeScalar(0x2757) ?? "!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        userNameTextField.returnKeyType = UIReturnKeyType.next
        
        passwordTextField.delegate = self
        passwordTextField.returnKeyType = UIReturnKeyType.done
        passwordTextField.enablesReturnKeyAutomatically = true
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender {
        case userNameAlert:
            showAlert(with: "Oops\(emoji)", and: "Your username is User")
        case passwordAlert:
            showAlert(with: "Oops\(emoji)", and: "Your password is Pass")
        default:
            if checkUser(in: users, login: userNameTextField.text ?? "", pass: passwordTextField.text ?? "") {
                self.performSegue(withIdentifier: "login", sender: self)
            } else {
                passwordTextField.text = ""
                showAlert(with: "Invalid Login or Password", and: "Please try again")
            }
        }
    }
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


// MARK: - Auth Methods
extension LoginViewController {
    private func checkUser(in usersList: [String:String], login: String, pass: String) -> Bool {
        guard let currentUserPass = usersList[login] else { return false }
        return currentUserPass == pass ? true : false
    }
}

// MARK: - Keyboard methods
extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            logInButton.sendActions(for: .touchUpInside)
        default:
            textField.resignFirstResponder()
        }
        return true
    }
}

// MARK: - Segue methods
extension LoginViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userNameIs = userNameTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        dismiss(animated: true)
    }
}
