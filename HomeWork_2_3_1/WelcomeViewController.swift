//
//  WelcomeViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 14.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var finalTextField: UITextField!
    
    var finalText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finalTextField.text = "Welcome, \(finalText ?? "")!"
    }
    
}
