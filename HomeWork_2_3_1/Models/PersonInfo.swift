//
//  PersonInfo.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 19.12.21.
//


struct PersonInformation {
    let personInfo: [Information]
}

struct Information {
    let name: String
    let lastName: String
    let yearsOld: Int
    let hobby: Hobby
    let countryOfBirth: Country
}

enum Hobby {
    case footbal
    case biathlon
    case hokkey
}

enum Country {
    case Russia
    case Belarus
    case USA
}
