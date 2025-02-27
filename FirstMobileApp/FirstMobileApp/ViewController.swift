//
//  ViewController.swift
//  FirstMobileApp
//
//  Created by Sumanth Reddy Gada on 31/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        helloLabel.text = "Hi"
        helloLabel.textColor = .yellow
    }

    @IBAction func goodbyeButtonTapped() {
        helloLabel.text = "Bye"
    }

}

