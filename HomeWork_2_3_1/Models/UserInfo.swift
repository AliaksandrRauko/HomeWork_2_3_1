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
    let privateInfo : String
    
    static func getUser() -> UserInfo {
        UserInfo(login: "Alex Rauko", password: "Password",
                 person: [PersonInformation(personInfo:[
                    Information(name: "Alex", lastName: "Rauko",
                                yearsOld: 34, hobby: .biathlon,
                                countryOfBirth: .Belarus)])], privateInfo: "Евгения, привет!🙂 Коротко о себе. Меня зовут Саша, 34 года из Минска. Сам я программист 1С и хочу перейти в swift, т.к. там уже давно потолок развития да и надоело🙂. Больно конечно будет терять в зп в первые годы, но что поделать.. Swift учу с нуля благодаря тебе на этом курсе. По опыту понимаю куда иду и сколько надо сил и времени затратить на это дело. Тебе ОГРОМНОЕ спасибо за качественный фидбэк, первый раз встречаю такую крутую отдачу у преподавателя👏 Будем сражаться дальше:)")
    }
    
}





