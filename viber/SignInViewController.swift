//
//  SignInViewController.swift
//  viber
//
//  Created by Jane Shin on 10/7/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Flickr"
        label.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 30))
        label.textAlignment = .center
        return label
    }()
    
//    var usernameButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Username".localized, for: .normal)
//        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 20))
//        button.contentHorizontalAlignment = .center
//        button.tintColor = .darkGray
//        button.isUserInteractionEnabled = false
//        return button
//    }()
//
//    var passwordButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Password".localized, for: .normal)
//        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 20))
//        button.contentHorizontalAlignment = .center
//        button.tintColor = .darkGray
//        button.isUserInteractionEnabled = false
//        return button
//    }()
    
    var usernameLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Username".localized
            label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
            label.textAlignment = .center
            return label
    }()
    
    var passwordLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Password".localized
            label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
            label.textAlignment = .center
            return label
    }()
    
    var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.borderStyle = .none
        textField.textColor = .black
        textField.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 19))
        
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        
        let placeholderAttr = NSAttributedString(string: "EnterUsername".localized, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray.withAlphaComponent(0.5)])
        textField.attributedPlaceholder = placeholderAttr
        textField.textAlignment = .center
        return textField
    }()
    
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.borderStyle = .none
        textField.textColor = .black
        textField.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = true
        
        let placeholderAttr = NSAttributedString(string: "EnterPassword".localized, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray.withAlphaComponent(0.5)])
        textField.attributedPlaceholder = placeholderAttr
        textField.textAlignment = .center
        return textField
    }()
    
    var signInButton: UIButton = {
        let button = UIButton(type: .system)
        let targetSize = targetIconSize(imageName: "stick_right_arrow")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In".localized, for: .normal)
        button.tintColor = .black
        button.setImage(UIImage(named: "stick_right_arrow"), for: .normal)
        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 20))
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: targetSize, left: targetSize, bottom: targetSize, right: targetSize)
        button.clipsToBounds = true
        return button
    }()
    
    var helpButton: UIButton = {
        let button = UIButton(type: .system)
        let targetSize = targetIconSize(imageName: "help_outline")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentHorizontalAlignment = .right
        button.setImage(UIImage(named: "help_outline"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: targetSize, left: targetSize, bottom: targetSize, right: targetSize)
        button.tintColor = .black
        return button
    }()
    
    var backButton: UIButton = {
        let button = UIButton(type: .system)
        let targetSize = targetIconSize(imageName: "back_arrow")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentHorizontalAlignment = .left
        button.setImage(UIImage(named: "back_arrow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: targetSize, left: targetSize, bottom: targetSize, right: targetSize)
        button.tintColor = .black
        return button
    }()
    
    var termsAndServiceButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let title = "By signing in you agree to our".localized
        let subtitle = "Terms & Privacy Policy".localized
        let signInAttributedText = NSMutableAttributedString(string: title, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 15))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        let attributedSubText = NSMutableAttributedString(string: subtitle, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 15))!,
             NSAttributedString.Key.foregroundColor : UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)])
        signInAttributedText.append(attributedSubText)
        button.setAttributedTitle(signInAttributedText, for: UIControl.State.normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.numberOfLines = 0
        return button
    }()
    
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .orange
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        return tableView
    }()
    
    var transparentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        view.frame = CGRect(x: 0, y: 0, width: MAINSCREEN_WIDTH, height: MAINSCREEN_HEIGHT)
        return view
    }()
    
    let helpListContents = ["Can we help?", "To find password", "Get Support", "Cancel"]
    
    lazy var tableViewWidth = tableView.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth() - 10)
    lazy var tableViewHeight = tableView.heightAnchor.constraint(equalToConstant: optimizedCenterTableViewHeight() *  0.7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        view.addSubview(usernameLabel)
        view.addSubview(passwordLabel)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
        view.addSubview(backButton)
        view.addSubview(helpButton)
        view.addSubview(termsAndServiceButton)
        
        view.backgroundColor = .white
        
        tableView.register(helpListCell.self, forCellReuseIdentifier: "helpListCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: optimizedTopTitleConstant(constant: STATUS_BAR_HEIGHT)).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
        
//        usernameButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: optimizedGapSize(size: 40)).isActive = true
//        usernameButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        usernameButton.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/4.5).isActive = true
//
//        usernameTextField.centerYAnchor.constraint(equalTo: usernameButton.centerYAnchor).isActive = true
//        usernameTextField.leftAnchor.constraint(equalTo: usernameButton.rightAnchor, constant: optimizedGapSize(size: 15)).isActive = true
//        usernameTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7).isActive = true

//        passwordButton.topAnchor.constraint(equalTo: usernameButton.bottomAnchor, constant: optimizedGapSize(size: 20)).isActive = true
//        passwordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        passwordButton.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/4.5).isActive = true
//
//        passwordTextField.centerYAnchor.constraint(equalTo: passwordButton.centerYAnchor).isActive = true
//        passwordTextField.leftAnchor.constraint(equalTo: passwordButton.rightAnchor, constant: optimizedGapSize(size: 15)).isActive = true
//        passwordTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7).isActive = true
        
        usernameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: optimizedGapSize(size: 40)).isActive = true
        usernameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        usernameLabel.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/4.5).isActive = true
        
        usernameTextField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        usernameTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7).isActive = true

        passwordLabel.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        passwordLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/4.5).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7).isActive = true

        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: optimizedGapSize(size: 50)).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/2).isActive = true
        
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: optimizedTopButtonConstant(constant: STATUS_BAR_HEIGHT)).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: targetIconSize(imageName: "back_arrow")).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: targetIconSize(imageName: "back_arrow")).isActive = true

        helpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        helpButton.topAnchor.constraint(equalTo: view.topAnchor, constant: optimizedTopButtonConstant(constant: STATUS_BAR_HEIGHT)).isActive = true
        helpButton.widthAnchor.constraint(equalToConstant: targetIconSize(imageName: "help_outline")).isActive = true
        helpButton.heightAnchor.constraint(equalToConstant: targetIconSize(imageName: "help_outline")).isActive = true
        
        termsAndServiceButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: optimizedBottomConstant(constant: -40)).isActive = true
        termsAndServiceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        termsAndServiceButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
        termsAndServiceButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        didTapDismissButton()
        didTapHelpButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func didTapDismissButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDismiss))
        backButton.addGestureRecognizer(tapGesture)
    }

    @objc func handleDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func didTapHelpButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showHelpList))
        helpButton.addGestureRecognizer(tapGesture)
    }

    @objc func showHelpList() {
        view.addSubview(transparentView)
        view.addSubview(tableView)
        tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tableViewWidth.isActive = true
        tableViewHeight.isActive = true
        
        tableView.layer.cornerRadius = tableViewWidth.constant * 0.08
        tableView.clipsToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissHelpList))
        transparentView.addGestureRecognizer(tapGesture)
        
        transparentView.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.alpha = 1
        }, completion: nil)
    }
    
    @objc func dismissHelpList() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.transparentView.alpha = 0
            self.tableView.alpha = 0
        }, completion: nil)
    }
}

class helpListCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SignInViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return helpListContents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "helpListCell", for: indexPath) as! helpListCell
        let item = helpListContents[indexPath.row]
        setupCell(cell: cell, item: item)
        cell.textLabel?.text = item.localized
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellForRowHeightWithFiedArray(tableViewHeight: tableViewHeight.constant, numberOfItems: 4)
    }
    
    func setupCell(cell: helpListCell, item: String) {
        cell.textLabel?.textAlignment = .center
        if item == "Can we help?" {
            cell.textLabel?.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 20))
            cell.selectionStyle = .none
        } else {
            cell.textLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 18))
            if item == "To find password" {
            }
            if item == "Get Support" {
            }
            if item ==  "Cancel" {
                cell.textLabel?.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 18))
                cell.textLabel?.textColor = UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
//        case 0:
////            self.performSegue(withIdentifier: "showProfileAccountSegue", sender: self)
//        case 1:
//        case 2:
        case 3:
            dismissHelpList()
        default:
            break
        }
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
