//
//  UserInfo.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 19.12.21.
//

import UIKit

struct UserInfo {
    let login: String
    let password: String
    let person: [PersonInformation]
    
    static func getUser() -> (login: String, password: String, [PersonInformation]) {
        ("Alex Rauko",
            "Password",
            [PersonInformation(personInfo:[
                Information(name: "Alex", lastName: "Rauko",
                            yearsOld: 34, hobby: .biathlon,
                            countryOfBirth: .Belarus)])])
    }
}





