//
//  User.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

struct User {
    let login: String
    let password: String
    let person: PersonData
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Pass",
            person: PersonData(
                firstName: "Sergey",
                lastName: "Nechaev",
                age: 32,
                about: "В далекой-далекой галактике...",
                tagline: "Чистый кот"
            )
        )
    }
}

struct PersonData {
    let firstName: String
    let lastName: String
    let age: Int
    let about: String
    let tagline: String
}
