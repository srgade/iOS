//
//  HomeViewController.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol HomeViewControllerDelegate {
//    func homeViewDidTapPushMagenta()
    func homeViewDidTapModalYellow()
    func homeViewDidTapModalRGB()
    func homeViewDidTapPushHome()
    func homeViewDidTapModalInModal()
    func homeViewDidTapAction()
}

protocol PopoverPresenting {
    var buttonFrame: CGRect { get }
    var buttonSuperview: UIView? { get }
}

class HomeViewController: UIViewController, StoryboardInstantiable, PopoverPresenting {
    @IBOutlet weak var btnAction: UIButton!
    var delegate: HomeViewControllerDelegate?
    
    var buttonFrame: CGRect {
        return btnAction.frame
    }

    var buttonSuperview: UIView? {
        return btnAction.superview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnModalInModalTap(_ sender: Any) {
        delegate?.homeViewDidTapModalInModal()
    }
    
//    @IBAction func btnPushMagentaTap(_ sender: Any) {
//        delegate?.homeViewDidTapPushMagenta()
//    }
    
    @IBAction func btnModalYellowTap(_ sender: Any) {
        delegate?.homeViewDidTapModalYellow()
    }
    
    @IBAction func btnModalRGBTap(_ sender: Any) {
        delegate?.homeViewDidTapModalRGB()
    }
    
    @IBAction func btnActionTap(_ sender: Any) {
        delegate?.homeViewDidTapAction()
    }
    
    @IBAction func btnModalHomeTap(_ sender: Any) {
        delegate?.homeViewDidTapPushHome()
    }
}
