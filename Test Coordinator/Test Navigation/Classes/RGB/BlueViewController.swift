//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol BlueViewControllerDelegate {
    func blueViewDidTapAction()
}

class BlueViewController: UIViewController, StoryboardInstantiable {
    var delegate: BlueViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.blueViewDidTapAction()
    }
    
}
