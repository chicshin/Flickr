//
//  InitNavigationBar.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import Foundation
import UIKit

func initNavigationBar(navigationController:UINavigationController, view:UIView) {
    view.backgroundColor = UIColor.white
    navigationController.navigationBar.barTintColor = .white
    navigationController.navigationBar.prefersLargeTitles = true
    navigationController.navigationBar.shouldRemoveShadow(true)
}
