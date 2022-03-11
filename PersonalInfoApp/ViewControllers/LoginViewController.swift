//
//  LoginViewController.swift
//  PersonalInfoApp
//
//  Created by Aleksandr Rybachev on 11.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
            
    }
    
    
    @IBAction func showAuthorizationInfo(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your login is User 😎")
            : showAlert(title: "Oops!", message: "Your password is Password 😎")
    }
    


}

// MARK: - AlertController
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

