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
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        
        userName.text = "My name is \(user.person.fullName)."
        userAge.text = "I'm \(user.person.age) years old."
        userCity.text = "I live in \(user.person.city)."
        infoAboutUser.text = "About me: \(user.person.description)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.userImage = user
    }
}
