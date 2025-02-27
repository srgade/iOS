//
//  WalkthroughViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol CyanViewControllerDelegate {
    func cyanViewDidTapAction()
}

class CyanViewController: UIViewController, StoryboardInstantiable {
    @IBOutlet weak var btnAction: UIButton!
    var delegate: CyanViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize = CGSize(width: 500, height: 500)
        self.modalPresentationStyle = .popover
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.cyanViewDidTapAction()
    }
    
}
