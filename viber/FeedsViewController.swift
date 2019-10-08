//
//  FeedsViewController.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class FeedsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Feeds".localized
        initNavigationBar(navigationController: navigationController!, view: view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }

}
