//
//  ViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 14.12.21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextFild: UITextField!
    
    private let userInformation = UserInfo.getUser()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.autocorrectionType = .no
        userTextField.smartInsertDeleteType = .no
        passwordTextFild.isSecureTextEntry = true
        
        // Евгения, чтобы облегчить вам проверку сразу заполню:)
        userTextField.text = userInformation.login
        passwordTextFild.text = userInformation.password
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        for viewController in tabBarController.viewControllers ?? [] {
            if let welcomeVS = viewController as? WelcomeViewController {
                welcomeVS.finalName = userTextField.text
            } else if let navigationVS = viewController as? UINavigationController {
                let userNameVS = navigationVS.topViewController as! UserNameViewController
                userNameVS.finalName = userTextField.text
            }
        }        
    }
    
    @IBAction func logInAction() {
        guard let userTextField = userTextField.text else {return}
        guard let passwordTextFild = passwordTextFild.text else {return}
        
        if userTextField != userInformation.login
            || passwordTextFild != userInformation.password {
            showForgotThings(title: "Erroooor!", message: "Incorrect name or password😫")
        }
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        sender.tag == 0
        ? showForgotThings(title: "Oooops!",
                           message: "Your name is \(userInformation.login) 😀")
        : showForgotThings(title: "Oooops!",
                           message: "Your password is \(userInformation.password) 😀")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextFild.text = ""
    }
}


// MARK: - Private Methods
extension LoginViewController {
    private func showForgotThings(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            if title == "Erroooor!" {
                self.passwordTextFild.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
// MARK: - Alert Controller
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
            passwordTextFild.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "segueToWelcome", sender: nil)
        }
        return true
    }
}

