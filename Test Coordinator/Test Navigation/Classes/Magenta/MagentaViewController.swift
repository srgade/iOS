//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol MagentaViewControllerDelegate {
    func magentaViewDidTapAction()
}

class MagentaViewController: UIViewController, StoryboardInstantiable {
    var delegate: MagentaViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.magentaViewDidTapAction()
    }
    
}
