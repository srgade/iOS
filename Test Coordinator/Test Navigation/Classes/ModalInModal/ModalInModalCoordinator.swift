//
//  ModalInModalCoordinator.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/23/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

protocol ModalInModalCoordinatorDelegate {
    func modalInModalDidDismiss()
}

class ModalInModalCoordinator: Coordinator {
    var delegate: ModalInModalCoordinatorDelegate?
    var completion: ((_ result: Bool) -> Void)?
    fileprivate let presenter: UIViewController
    fileprivate let orangeViewController: OrangeViewController
    fileprivate let brownViewController: BrownViewController
    fileprivate let purpleViewController: PurpleViewController
    
    var displayContext: UIViewController {
        return self.presenter
    }
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.orangeViewController = OrangeViewController.instantiateViewController()
        self.brownViewController = BrownViewController.instantiateViewController()
        self.brownViewController.modalPresentationStyle = .pageSheet
        self.purpleViewController = PurpleViewController.instantiateViewController()
        self.purpleViewController.modalPresentationStyle = .formSheet
        orangeViewController.delegate = self
        brownViewController.delegate = self
        purpleViewController.delegate = self
    }
    
    func dismiss(completion: (() -> Void)? = nil) {
        presenter.dismiss(animated: true, completion: completion)
    }
    
    func start() {
        presenter.present(orangeViewController, animated: true, completion: nil)
    }
}

extension ModalInModalCoordinator: OrangeViewControllerDelegate {
    func orangeViewDidTapAction() {
        orangeViewController.present(brownViewController, animated: true, completion: nil)
    }
}

extension ModalInModalCoordinator: BrownViewControllerDelegate {
    func brownViewDidTapAction() {
        brownViewController.present(purpleViewController, animated: true, completion: nil)
    }
}

extension ModalInModalCoordinator: PurpleViewControllerDelegate {
    func purpleViewDidTapAction() {
        delegate?.modalInModalDidDismiss()
    }
}
