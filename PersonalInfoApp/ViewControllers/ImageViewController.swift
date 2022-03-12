//
//  ImageViewController.swift
//  PersonalInfoApp
//
//  Created by Aleksandr Rybachev on 11.03.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var userPhoto: UIImageView!
    
    var userImage: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.image = UIImage(named: userImage.person.image)
        userPhoto.contentMode = .scaleAspectFill
    }
    
    override func viewDidLayoutSubviews() {
        userPhoto.layer.cornerRadius = userPhoto.frame.width / 2
    }
}
