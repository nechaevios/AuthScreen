//
//  MoreInfoViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }

}
