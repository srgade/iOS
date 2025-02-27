//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Sumanth Reddy Gada on 31/07/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: SystemImages.HOUSE)
        vc2.tabBarItem.image = UIImage(systemName: SystemImages.PLAY)
        vc3.tabBarItem.image = UIImage(systemName: SystemImages.SEARCH)
        vc4.tabBarItem.image = UIImage(systemName: SystemImages.DOWNLOAD)
        
        
        vc1.title  = Labels.HOME
        vc2.title  = Labels.COMING_SOON
        vc3.title  = Labels.TOP_SEARCH
        vc4.title  = Labels.DOWNLOADS
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc1, vc2,vc3, vc4], animated: true)
    }


}

