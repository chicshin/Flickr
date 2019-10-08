//
//  Extensions.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {

    func shouldRemoveShadow(_ value: Bool) -> Void {
        if value {
            self.setValue(true, forKey: "hidesShadow")
        } else {
            self.setValue(false, forKey: "hidesShadow")
        }
    }
}

extension UITabBarController {
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController {
        let viewController = vc
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.image = unselected.withRenderingMode(.alwaysOriginal)
        navigationController.tabBarItem.selectedImage = selected.withRenderingMode(.alwaysOriginal)
        return navigationController
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
