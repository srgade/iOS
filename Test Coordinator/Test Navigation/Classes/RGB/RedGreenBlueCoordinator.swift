//
//  RedGreenBlueCoordinator.swift
//  Test Navigation
//
//  Created by Travis Ma on 8/22/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class RedGreenBlueCoordinator: Coordinator {
    var completion: ((_ result: Bool) -> Void)?
    fileprivate let presenter: UIViewController
    fileprivate let redViewController: RedViewController
    fileprivate let greenViewController: GreenViewController
    fileprivate let blueViewController: BlueViewController
    fileprivate let navigationController = UINavigationController()
    
    var displayContext: UIViewController {
        return self.presenter
    }
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.redViewController = RedViewController.instantiateViewController()
        self.greenViewController = GreenViewController.instantiateViewController()
        self.blueViewController = BlueViewController.instantiateViewController()
        redViewController.delegate = self
        greenViewController.delegate = self
        blueViewController.delegate = self
    }
    
    func dismiss(completion: (() -> Void)? = nil) {
        presenter.dismiss(animated: true, completion: completion)
    }
    
    func start() {
        navigationController.pushViewController(redViewController, animated: false)
        presenter.present(navigationController, animated: true, completion: nil)
    }
}

extension RedGreenBlueCoordinator: RedViewControllerDelegate {
    func redViewDidTapAction() {
        navigationController.pushViewController(greenViewController, animated: true)
    }
}

extension RedGreenBlueCoordinator: GreenViewControllerDelegate {
    func greenViewDidTapAction() {
        navigationController.pushViewController(blueViewController, animated: true)
    }
}

extension RedGreenBlueCoordinator: BlueViewControllerDelegate {
    func blueViewDidTapAction() {
        dismiss()
    }
}
