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
                birthDate: "01.00.0100",
                age: 32,
                city: "Saint-Petersburg",
                intro: "A long time ago in a galaxy far, far away...",
                about: "Yoda was a legendary Jedi Master and stronger than most in his connection with the Force. Small in size but wise and powerful, he trained Jedi for over 800 years, playing integral roles in the Clone Wars, the instruction of Luke Skywalker, and unlocking the path to immortality",
                tagline: [
                    "Чистый кот",
                    "У самурая нет цели, есть только путь",
                    "Ты не ты, когда за тобой бегут менты (с) Джейсон Стэтхем"
                ]
            )
        )
    }
}

struct PersonData {
    let firstName: String
    let lastName: String
    let birthDate: String
    let age: Int
    let city: String
    let intro: String
    let about: String
    let tagline: [String]
}
