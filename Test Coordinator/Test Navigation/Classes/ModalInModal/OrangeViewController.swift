//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol OrangeViewControllerDelegate {
    func orangeViewDidTapAction()
}

class OrangeViewController: UIViewController, StoryboardInstantiable {
    var delegate: OrangeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.orangeViewDidTapAction()
    }
    
}
