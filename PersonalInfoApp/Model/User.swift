//
//  User.swift
//  PersonalInfoApp
//
//  Created by Aleksandr Rybachev on 11.03.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    let person: Person
    
    static func getUserInfo() -> User {
        User (
            login: "User",
            password: "Password",
            person: Person(
                firstName: "Alex",
                surName: "Rybachev",
                age: 40,
                city: "Samara",
                description: "For many years I worked as an internal auditor for a telecommunications company. Now I work as an internal control analyst in the same group of companies. I don't like the job, so I'm looking for other options. At first I studied web design and mobile application design. While studying design, he became interested in mobile development. That's why I came to study for an iOS developer.",
                image: "playstore"
            )
        )
    }
}

struct Person {
    let firstName: String
    let surName: String
    let age: Int
    let city: String
    let description: String
    let image: String
    
    var fullName: String {
        "\(firstName) \(surName)"
    }
    
    static func getPersonInfo() -> Person {
        Person(
            firstName: "Alex",
            surName: "Rybachev",
            age: 40,
            city: "Samara",
            description: "For many years I worked as an internal auditor for a telecommunications company. Now I work as an internal control analyst in the same group of companies. I don't like the job, so I'm looking for other options. At first I studied web design and mobile application design. While studying design, he became interested in mobile development. That's why I came to study for an iOS developer.",
            image: "playstore"
        )
    }
}
