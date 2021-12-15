//
//  ViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 14.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passworTextFild: UITextField!
    
    private let userName = "User"
    private let userPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let welcomeVS = segue.destination as! WelcomeViewController
//        welcomeVS.finalText = userTextField.text

    }
    
    @IBAction func logInAction() {
        
    }
    
    @IBAction func forgotUserAction() {
        showForgotThings(title: "Oooops!", message: "Your name is \(userName) 😀")
    }
    
    @IBAction func forgotPasswordAction() {
        showForgotThings(title: "Oooops!", message: "Your password is \(userPassword) 😀")
    }
}


// MARK: - Private Methods
extension ViewController {
    private func showForgotThings(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userTextField.text = "";
            self.passworTextFild.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
