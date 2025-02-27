//
//  CyanCoordinator.swift
//  Test Navigation
//
//  Created by Sumanth Reddy Gada on 01/08/24.
//  Copyright © 2024 Test. All rights reserved.
//

import UIKit

class CyanCoordinator : Coordinator {
    
    var completion: ((_ result: Bool) -> Void)?
    fileprivate let presenter: UIViewController
    fileprivate let cyanViewController: CyanViewController
    fileprivate let magentaCoordinator: MagentaCoordinator
    
    var displayContext: UIViewController {
        return self.presenter
    }
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.cyanViewController = CyanViewController.instantiateViewController()
        self.magentaCoordinator = MagentaCoordinator(presenter: cyanViewController)
        cyanViewController.delegate = self
    }
    
    func dismiss(completion: (() -> Void)? = nil) {
        presenter.dismiss(animated: true, completion: completion)
    }
    
    func start() {
        if let popover = cyanViewController.popoverPresentationController {
            popover.backgroundColor = cyanViewController.view.backgroundColor
            if let presenter = presenter as? PopoverPresenting {
                popover.sourceRect = presenter.buttonFrame
                popover.sourceView = presenter.buttonSuperview
            } else {
                popover.sourceRect = CGRect() // Default or error value
                popover.sourceView = nil
            }
        }
        presenter.present(cyanViewController, animated: true, completion: nil)
    }
    
}

extension CyanCoordinator: CyanViewControllerDelegate {
    func cyanViewDidTapAction() {
        magentaCoordinator.start()
    }
}
