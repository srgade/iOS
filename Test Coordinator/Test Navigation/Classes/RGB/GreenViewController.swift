//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol GreenViewControllerDelegate {
    func greenViewDidTapAction()
}

class GreenViewController: UIViewController, StoryboardInstantiable {
    var delegate: GreenViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.greenViewDidTapAction()
    }
    
}
