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
        
        creatGradient()
        getFinalNameLabel()
        
    }
}


// MARK: - private
extension WelcomeViewController {
    
    private func creatGradient() {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        
        gradient.colors = [
            UIColor.black.cgColor,
            UIColor.blue.cgColor,
            UIColor.white.cgColor]
        
        gradient.locations = [0, 0.25, 1]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at:0)
    }
    
    private func getFinalNameLabel() {
        finalNameLabel.font = finalNameLabel.font.withSize(20)
        finalNameLabel.textAlignment = .center
        finalNameLabel.textColor = UIColor.white
        finalNameLabel.numberOfLines = 4
        finalNameLabel.text = "Welcome, \(finalName ?? "") ! \n\n👏"        
    }
}

