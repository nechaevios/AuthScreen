//
//  MemesViewController.swift
//  AuthScreen
//
//  Created by Nechaev Sergey  on 29.08.2021.
//

import UIKit

class MemesViewController: UIViewController {
    
    // TODO Set random image on DidLoad
    // MARK: - IB Outlets
    @IBOutlet weak var memeImages: UIImageView!
    
    var memes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Memes"
    }
    
    // MARK: - IBActions
    @IBAction func backButtonTapped (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
