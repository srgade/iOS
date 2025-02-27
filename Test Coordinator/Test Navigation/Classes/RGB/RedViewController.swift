//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol RedViewControllerDelegate {
    func redViewDidTapAction()
}

class RedViewController: UIViewController, StoryboardInstantiable {
    var delegate: RedViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.redViewDidTapAction()
    }
    
}
