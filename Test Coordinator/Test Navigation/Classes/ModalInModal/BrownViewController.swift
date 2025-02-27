//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol BrownViewControllerDelegate {
    func brownViewDidTapAction()
}

class BrownViewController: UIViewController, StoryboardInstantiable {
    var delegate: BrownViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.brownViewDidTapAction()
    }
    
}
