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

        navigationItem.title = "\(userData.person.firstName) \(userData.person.lastName)"
        
        birthDateLabel.text = userData.person.birthDate
        ageLabel.text = String(userData.person.age)
        cityLabel.text = userData.person.city
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigationVC = segue.destination as? UINavigationController {
            let moreInfoVC = navigationVC.topViewController as! MoreInfoViewController
            moreInfoVC.moreInfoData = userData.person.about
            moreInfoVC.introData = userData.person.intro
        }
        
    }
    
}
