//
//  WelcomeViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 15.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet var finalNameLabel: UILabel!
    
    var finalName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        finalNameLabel.font = finalNameLabel.font.withSize(20)
        finalNameLabel.textAlignment = .center
        finalNameLabel.textColor = UIColor.white
        finalNameLabel.numberOfLines = 4
        finalNameLabel.text = "Welcome, \(finalName ?? "") ! \n\n👏"
        
    }
    
}

