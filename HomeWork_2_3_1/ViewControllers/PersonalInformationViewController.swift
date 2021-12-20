//
//  PersonalInformationViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 18.12.21.
//

import UIKit

class PersonalInformationViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!

    private let myInfo = UserInfo.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = myInfo.privateInfo
    }
}

