//
//  MagentaCoordinator.swift
//  Test Navigation
//
//  Created by Sumanth Reddy Gada on 01/08/24.
//  Copyright © 2024 Test. All rights reserved.
//

import UIKit

class MagentaCoordinator: Coordinator {
 
    fileprivate let presenter: UIViewController
    fileprivate let magentaController: MagentaViewController
    
    var displayContext: UIViewController {
        return self.presenter
    }
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.magentaController = MagentaViewController.instantiateViewController()
        magentaController.delegate = self   
    }
    
    func dismiss(completion: (() -> Void)? = nil) {
        presenter.dismiss(animated: true, completion: completion)
    }
    
    func start() {
        presenter.present(magentaController, animated: true, completion: nil)
    }
    
}

extension MagentaCoordinator: MagentaViewControllerDelegate {
    func magentaViewDidTapAction() {
        dismiss()
    }
}
