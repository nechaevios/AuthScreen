//
//  MoreInfoViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    
    var moreInfoData = ""
    var introData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "\(moreInfoData)"
        introLabel.text = "\(introData)"
    }
    
    @IBAction func backButtonTapped (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }

}
