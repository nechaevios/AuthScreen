//
//  WelcomeViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var userNameIs: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ UIColor.systemPink.cgColor, UIColor.blue.cgColor]
        gradientLayer.frame = view.frame
        
        gradientLayer.startPoint = CGPoint(x: 0.0,y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.2,y: 1.3)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.textColor = .white
        welcomeLabel.text = "Welcome, " + userNameIs + "!"
    }
    
}
