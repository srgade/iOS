//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol YellowViewControllerDelegate {
    func yellowViewDidTapAction()
}

class YellowViewController: UIViewController, StoryboardInstantiable {
    var delegate: YellowViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.yellowViewDidTapAction()
    }
    
}
