//
//  PersonalInformationViewController.swift
//  HomeWork_2_3_1
//
//  Created by Aliaksandr Rauko on 18.12.21.
//

import UIKit

class PersonalInformationViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        showInfo()
    }
}


//MARK: -

extension PersonalInformationViewController {
   private func showInfo() {
        infoLabel.text = "Евгения, привет!🙂 Коротко о себе. Меня зовут Саша, 34 года из Минска. Сам я программист 1С и хочу перейти в swift, т.к. там уже давно потолок развития да и надоело🙂. Больно конечно будет терять в зп в первые годы, но что поделать.. Swift учу с нуля благодаря тебе на этом курсе. По опыту понимаю куда иду и сколько надо сил и времени затратить на это дело. Тебе ОГРОМНОЕ спасибо за качественный фидбэк, первый раз встречаю такую крутую отдачу у преподователя👏 Будем сражаться дальше:)"
    }
}
