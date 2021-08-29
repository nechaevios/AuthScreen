//
//  AboutMeViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var userData: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullName = userData.person.firstName + " " + userData.person.lastName
        navigationItem.title = fullName
        
        birthDateLabel.text = userData.person.birthDate
        ageLabel.text = String(userData.person.age)
        cityLabel.text = userData.person.city
        
    }

}
