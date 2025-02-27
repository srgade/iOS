//
//  PasscodeCoordinator.swift
//  OCE
//
//  Created by Travis Ma on 7/13/17.
//  Copyright © 2017 QIMS. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    var completion: ((_ result: Bool) -> Void)?
    fileprivate let presenter: UIViewController
    fileprivate let homeViewController: HomeViewController
//    fileprivate let magentaViewController: MagentaViewController
    fileprivate let yellowViewController: YellowViewController
//    fileprivate let cyanViewController: CyanViewController
    fileprivate let cyanCoordinator: CyanCoordinator
    fileprivate let rgbCoordinator: RedGreenBlueCoordinator
    fileprivate let modalInModalCoordinator: ModalInModalCoordinator
    fileprivate var homeCoordinator: HomeCoordinator?
    fileprivate let navigationController: UINavigationController
    fileprivate var isLaunchCoordinator = false
    
    var displayContext: UIViewController {
        return self.presenter
    }
    
    init(presenter: UIViewController, isLaunchCoordinator: Bool) {
        self.presenter = presenter
        self.isLaunchCoordinator = isLaunchCoordinator
        self.homeViewController = HomeViewController.instantiateViewController()
        self.navigationController = UINavigationController(rootViewController: self.homeViewController)
//        self.magentaViewController = MagentaViewController.instantiateViewController()
        self.yellowViewController = YellowViewController.instantiateViewController()
//        self.cyanViewController = CyanViewController.instantiateViewController()
        self.cyanCoordinator = CyanCoordinator(presenter: homeViewController)
        self.rgbCoordinator = RedGreenBlueCoordinator(presenter: homeViewController)
        self.modalInModalCoordinator = ModalInModalCoordinator(presenter: self.homeViewController)
        homeViewController.delegate = self
        yellowViewController.delegate = self
//        magentaViewController.delegate = self
//        cyanViewController.delegate = self
        modalInModalCoordinator.delegate = self
    }
    
    func dismiss(completion: (() -> Void)? = nil) {
        presenter.dismiss(animated: true, completion: completion)
    }
    
    func start() {
        presenter.present(navigationController, animated: !isLaunchCoordinator, completion: nil)
    }
}

extension HomeCoordinator: HomeViewControllerDelegate {
//    func homeViewDidTapPushMagenta() {
//        navigationController.pushViewController(magentaViewController, animated: true)
//    }
    
    func homeViewDidTapModalYellow() {
        homeViewController.present(yellowViewController, animated: true, completion: nil)
    }
    
    func homeViewDidTapPushHome() {
        homeCoordinator = HomeCoordinator(presenter: homeViewController, isLaunchCoordinator: false)
        homeCoordinator?.start()
    }
    
    func homeViewDidTapModalRGB() {
        rgbCoordinator.start()
    }
    
    func homeViewDidTapModalInModal() {
        modalInModalCoordinator.start()
    }
    
    func homeViewDidTapAction() {
        if !isLaunchCoordinator {
            dismiss()
        } else {
            cyanCoordinator.start()
//            cyanViewController.modalPresentationStyle = .popover
//            if let popover = cyanViewController.popoverPresentationController {
//                popover.backgroundColor = cyanViewController.view.backgroundColor
//                popover.sourceRect = homeViewController.btnAction.frame
//                popover.sourceView = homeViewController.btnAction.superview
//            }
//            homeViewController.present(cyanViewController, animated: true, completion: nil)
        }
    }
}

//extension HomeCoordinator: MagentaViewControllerDelegate {
//    func magentaViewDidTapAction() {
//        navigationController.popViewController(animated: true)
//    }
//}

extension HomeCoordinator: YellowViewControllerDelegate {
    func yellowViewDidTapAction() {
        homeViewController.dismiss(animated: true, completion: nil)
    }
}

//extension HomeCoordinator: CyanViewControllerDelegate {
//    func cyanViewDidTapAction() {
//        homeViewController.dismiss(animated: true, completion: nil)
//    }
//}

extension HomeCoordinator: ModalInModalCoordinatorDelegate {
    func modalInModalDidDismiss() {
        homeViewController.dismiss(animated: true, completion: nil)
    }
}
