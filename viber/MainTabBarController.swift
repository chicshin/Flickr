//
//  MainTabBarControllerViewController.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.white
        UITabBar.appearance().layer.borderWidth = 0.0
        UITabBar.appearance().clipsToBounds = true
        setUpTabBar()
    }
    
    func setUpTabBar() {
        let feedsViewController = createNavController(vc: FeedsViewController(), selected: UIImage(named: "visibility")!, unselected: UIImage(named: "visibility_outline")!)
        
        let homeViewController = createNavController(vc: HomeViewController(), selected: UIImage(named: "home")!, unselected: UIImage(named: "home_outline")!)
        
        let cameraViewController = createNavController(vc: CameraViewController(), selected: UIImage(named: "circular_camera")!, unselected: UIImage(named: "circular_camera_outline")!)
        
        viewControllers = [feedsViewController, homeViewController, cameraViewController]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        }
    }
    
}
