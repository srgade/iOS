//
//  ApplicationCoordinator.swift
//  OCE
//
//  Created by Travis Ma on 5/3/17.
//  Copyright © 2017 QIMS. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    fileprivate let window: UIWindow
    fileprivate let applicationStartViewController: UIViewController
    fileprivate let homeCoordinator: HomeCoordinator
    
    init(window: UIWindow) {
        self.window = window
        self.applicationStartViewController = UIViewController()
        self.window.rootViewController = applicationStartViewController
        self.homeCoordinator = HomeCoordinator(presenter: applicationStartViewController, isLaunchCoordinator: true)
    }
    
    var displayContext: UIViewController {
        return self.applicationStartViewController
    }
    
    func start() {
        homeCoordinator.start()
    }
}

