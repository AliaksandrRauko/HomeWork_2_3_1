//
//  ViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 14.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextFild: UITextField!
    
    private let userName = "User"
    private let userPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.autocorrectionType = .no
        userTextField.smartInsertDeleteType = .no
        passwordTextFild.isSecureTextEntry = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToNext" {
            let welcomeVS = segue.destination as! WelcomeViewController
            welcomeVS.finalName = userTextField.text
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func logInAction() {
        guard let userTextField = userTextField.text else {return}
        guard let passwordTextFild = passwordTextFild.text else {return}
        
        if userTextField != userName || passwordTextFild != userPassword {
            showForgotThings(title: "Erroooor!", message: "Incorrect name or password😫")
        } else {
            performSegue(withIdentifier: "segueToNext", sender: self)
        }
    }
    
    @IBAction func forgotUserAction() {
        showForgotThings(title: "Oooops!", message: "Your name is \(userName) 😀")
    }
    
    @IBAction func forgotPasswordAction() {
        showForgotThings(title: "Oooops!", message: "Your password is \(userPassword) 😀")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextFild.text = ""
    }
}


// MARK: - Private Methods
extension ViewController {
    private func showForgotThings(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userTextField.text = "";
            self.passwordTextFild.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
