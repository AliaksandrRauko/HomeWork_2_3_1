//
//  UserNameViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 18.12.21.
//

import UIKit

class UserNameViewController: UIViewController {
    
    var finalName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = finalName
    }
}
