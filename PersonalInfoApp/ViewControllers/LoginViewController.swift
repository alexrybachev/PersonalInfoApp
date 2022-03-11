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
    
    // MARK: - Properties
    let user = User.getInfoUser()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        let viewControllers = tabBarController.viewControllers ?? []
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = user.person.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                guard let infoUser = navigationVC.topViewController as? UserInfoViewController else { return }
                infoUser.user = user
            }
        }
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
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

// MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}

