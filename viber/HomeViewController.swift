//
//  HomeViewController.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var isRegisterd = false
    var requestRegisterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "RequestRegister".localized
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        label.textAlignment = .center
        label.textColor = .black
        label.alpha = 0.1
        label.numberOfLines = 0
        return label
    }()
    
    var registerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isRegisterd == false {
            loadRegisterMessage()
        }
        initNavigationBar(navigationController: navigationController!, view: view)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }
    
    
    /* Handle Home View */
    
    
    /* Handle Registration */
    func loadRegisterMessage() {
        view.addSubview(requestRegisterLabel)
        view.addSubview(registerView)
        
        requestRegister()
        didTapRegisterLabel()
        
        requestRegisterLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        requestRegisterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        requestRegisterLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
        
        registerView.topAnchor.constraint(equalTo: requestRegisterLabel.topAnchor).isActive = true
        registerView.leftAnchor.constraint(equalTo: requestRegisterLabel.leftAnchor).isActive = true
        registerView.heightAnchor.constraint(equalTo: requestRegisterLabel.heightAnchor).isActive = true
        registerView.widthAnchor.constraint(equalTo: requestRegisterLabel.widthAnchor).isActive = true
    }
    
    func didTapRegisterLabel() {
        registerView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentRegisterController))
        registerView.addGestureRecognizer(tapGesture)
    }
    
    @objc func presentRegisterController() {
        let viewController = RegisterViewController()
        self.definesPresentationContext = true
        viewController.modalPresentationStyle = .overFullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    func requestRegister() {
        UIView.animate(withDuration: 2.5, delay: 0, options: .curveEaseIn, animations: {
            self.requestRegisterLabel.alpha = 1
        }) { (completion) in
            UIView.animate(withDuration: 3.5, delay: 0, options: .curveEaseOut, animations: {
                self.requestRegisterLabel.alpha = 0.1
            }) { (completion) in
                UIView.animate(withDuration: 2.5, delay: 0, options: .curveEaseIn, animations: {
                    self.requestRegisterLabel.alpha = 1
                }) { (completion) in
                    UIView.animate(withDuration: 3.5, delay: 0, options: .curveEaseIn, animations: {
                        self.requestRegisterLabel.alpha = 0.1
                    }) { (completion) in
                        UIView.animate(withDuration: 2.5, delay: 0, options: .curveEaseOut, animations: {
                            self.requestRegisterLabel.alpha = 1
                        }, completion: nil)
                    }
                }
            }
        }
    }
}
