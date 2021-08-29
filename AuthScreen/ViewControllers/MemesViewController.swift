//
//  MemesViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

import UIKit

class MemesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Memes"

    }
    
    @IBAction func backButtonTapped (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
