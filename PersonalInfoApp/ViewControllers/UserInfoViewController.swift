//
//  UserInfoViewController.swift
//  PersonalInfoApp
//
//  Created by Aleksandr Rybachev on 11.03.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var userName: UILabel!
    @IBOutlet var userAge: UILabel!
    @IBOutlet var userCity: UILabel!
    @IBOutlet var infoAboutUser: UILabel!
    
    // MARK: - Variable Properties
    var nameUser: String!
    var ageUser: Int!
    var cityUser: String!
    var aboutUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = "My name is \(nameUser ?? "")."
        userAge.text = "I'm \(ageUser ?? 0) years old."
        userCity.text = "I live in \(cityUser ?? "")."
        infoAboutUser.text = "About me: \(aboutUser ?? "")"
    }
}
