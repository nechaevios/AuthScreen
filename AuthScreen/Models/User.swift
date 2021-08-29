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
                birthDate: "08.05.1989",
                age: 32,
                city: "Saint-Petersburg",
                intro: "A long time ago in a galaxy far, far away...",
                about: "В течении последних 1.5 лет я наблюдал как заканчивает существование проект, которому я посвятил 4 года своих сил и нервов. В это же время я наблюдал как разработчик, нанятый мной для реализации торговых алгоритмов, прокачивает свои скилы. Это натолкнуло меня на мысль, что мне стоит попробовать изучить ЯП. Весомым аргументом пойти изучать swift был отзыв знакомой балерины, которая училась у вас на одном из прошлых потоков хД",
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
