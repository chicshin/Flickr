//
//  RegisterViewController.swift
//  viber
//
//  Created by Jane Shin on 10/6/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    var registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register".localized
//        label.text = "Register"
        label.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 28))
        label.textAlignment = .center
        return label
    }()
    
    var usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CreateUsername".localized
//        label.text = "Create Username"
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        label.textAlignment = .center
        label.alpha = 1
        return label
    }()
    
    var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email".localized
//        label.text = "Please enter email address"
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        label.textAlignment = .center
        label.alpha = 0
        return label
    }()
    
    var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password".localized
//        label.text = "Password"
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        label.textAlignment = .center
        label.alpha = 0
        return label
    }()
    
    var repasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Re-Password".localized
//        label.text = "Re-Password"
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))
        label.textAlignment = .center
        label.alpha = 0
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
             NSAttributedString.Key.foregroundColor : UIColor.lightGray.withAlphaComponent(0.6)])
        textField.attributedPlaceholder = placeholderAttr
        textField.textAlignment = .center
        return textField
    }()
    
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.borderStyle = .none
        textField.textColor = .black
        textField.font = UIFont(name: APPLESDGOTHICNEO_MED, size: optimizedFontSize(size: 19))
        
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        
        let placeholderAttr = NSAttributedString(string: "EnterEmail".localized, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray.withAlphaComponent(0.6)])
        textField.attributedPlaceholder = placeholderAttr
        textField.textAlignment = .center
        textField.alpha = 0
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
        textField.alpha = 0
        return textField
    }()
    
    var repasswordTextField: UITextField = {
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
        
        let placeholderAttr = NSAttributedString(string: "ReEnterPassword".localized, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 19))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray.withAlphaComponent(0.5)])
        textField.attributedPlaceholder = placeholderAttr
        textField.textAlignment = .center
        textField.alpha = 0
        return textField
    }()
    
    var verticalLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    var usernameNextButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next".localized, for: .normal)
//        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 18))
        button.setImage(UIImage(named: "right_arrow"), for: .normal)
        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = .lightGray
        return button
    }()
    
    var emailNextButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next".localized, for: .normal)
//        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 18))
        button.setImage(UIImage(named: "right_arrow"), for: .normal)
        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = .lightGray
        button.alpha = 0
        return button
    }()
    
    var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 18))
        button.tintColor = .lightGray
        button.alpha = 0
        return button
    }()
    
    var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 16))
        let title = "Already have an account? ".localized
        let subtitle = "Sign In".localized
        let signInAttributedText = NSMutableAttributedString(string: title, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 16))!,
             NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        let attributedSubText = NSMutableAttributedString(string: subtitle, attributes:
            [NSAttributedString.Key.font : UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 16))!,
             NSAttributedString.Key.foregroundColor : UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)])
        signInAttributedText.append(attributedSubText)
        button.setAttributedTitle(signInAttributedText, for: UIControl.State.normal)
        button.alpha = 1
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
        let title = "By signing up you agree to our".localized
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
        button.alpha = 0
        return button
    }()
    
    lazy var verticalLineHeight = verticalLineView.heightAnchor.constraint(equalToConstant: 0)
    lazy var usernameWidth = usernameLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var emailWidth = emailLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var usernameNextButtonWidth = usernameNextButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var emailNextButtonWidth = emailNextButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var passwordWidth = passwordLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var repasswordWidth = repasswordLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth())
    lazy var signUpButtonWidth = signUpButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth() - 20)
    lazy var usernameTextFieldWidth = usernameTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7)
    lazy var emailTextFieldWidth = emailTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7)
    lazy var passwordTextFieldWidth = passwordTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH/1.7)
    lazy var repasswordTextFieldWidth = repasswordTextField.widthAnchor.constraint(equalToConstant: MAINSCREEN_WIDTH)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(registerLabel)
        view.addSubview(usernameLabel)
        view.addSubview(usernameTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(repasswordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(repasswordTextField)
        view.addSubview(verticalLineView)
        view.addSubview(usernameNextButton)
        view.addSubview(emailNextButton)
        view.addSubview(signUpButton)
        view.addSubview(signInButton)
        view.addSubview(backButton)
        view.addSubview(termsAndServiceButton)
        
        view.backgroundColor = .white
        
        didTapSignIn()
        
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: STATUS_BAR_HEIGHT * 4).isActive = true
        registerLabel.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
                
        verticalLineView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        verticalLineView.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 10).isActive = true
        verticalLineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        verticalLineHeight.isActive = true
        
        usernameLabel.topAnchor.constraint(equalTo: verticalLineView.bottomAnchor, constant: 10).isActive = true
        usernameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        usernameWidth.isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: self.verticalLineView.bottomAnchor, constant: 10).isActive = true
        emailLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        emailWidth.isActive = true
        
        usernameTextField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        usernameTextFieldWidth.isActive = true
        
        usernameNextButton.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        usernameNextButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        usernameNextButtonWidth.isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextFieldWidth.isActive = true
        
        emailNextButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        emailNextButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        emailNextButtonWidth.isActive = true

        passwordLabel.topAnchor.constraint(equalTo: verticalLineView.bottomAnchor, constant: 10).isActive = true
        passwordLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordWidth.isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextFieldWidth.isActive = true

        repasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        repasswordLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        repasswordWidth.isActive = true
        
        repasswordTextField.topAnchor.constraint(equalTo: repasswordLabel.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        repasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        repasswordTextFieldWidth.isActive = true
        
        signUpButton.topAnchor.constraint(equalTo: repasswordTextField.bottomAnchor, constant: optimizedGapSize(size: 30)).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        signUpButtonWidth.isActive = true
        
        signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: optimizedBottomConstant(constant: -40)).isActive = true
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: optimizedTopButtonConstant(constant: STATUS_BAR_HEIGHT)).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: targetIconSize(imageName: "back_arrow")).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: targetIconSize(imageName: "back_arrow")).isActive = true
        
        termsAndServiceButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: optimizedBottomConstant(constant: -40)).isActive = true
        termsAndServiceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        termsAndServiceButton.widthAnchor.constraint(equalToConstant: optimizedCenterTextBoxWidth()).isActive = true
        termsAndServiceButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showVerticalLine(topAnchorLabel: registerLabel)
        didTapUsernameNextButton()
        didTapEmailNextButton()
        didTapDismissButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func showVerticalLine(topAnchorLabel: UILabel) {
        verticalLineHeight.constant = MAINSCREEN_HEIGHT/12
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    /* Handle Tap */
    func didTapUsernameNextButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showEmailField))
        usernameNextButton.addGestureRecognizer(tapGesture)
    }
    
    @objc func showEmailField() {
        usernameWidth.constant = 0
        usernameTextFieldWidth.constant = 0
        usernameNextButtonWidth.constant = 0
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.emailLabel.alpha = 1
            self.emailTextField.alpha = 1
            self.emailNextButton.alpha = 1
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func didTapEmailNextButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showPasswordField))
        emailNextButton.addGestureRecognizer(tapGesture)
    }
    
    @objc func showPasswordField() {
        emailWidth.constant = 0
        emailTextFieldWidth.constant = 0
        emailNextButtonWidth.constant = 0
        signInButton.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.passwordLabel.alpha = 1
            self.repasswordLabel.alpha = 1
            self.passwordTextField.alpha = 1
            self.repasswordTextField.alpha = 1
            self.signUpButton.alpha = 1
            self.termsAndServiceButton.alpha = 1
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func didTapSignUpButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleRegister))
        signUpButton.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleRegister() {
        signUpButtonWidth.constant = 0
        passwordWidth.constant = 0
        repasswordWidth.constant = 0
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func didTapSignIn() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleSignIn))
        signInButton.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleSignIn() {
        let viewController = SignInViewController()
        viewController.modalPresentationStyle = .overFullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    func didTapDismissButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDismiss))
        backButton.addGestureRecognizer(tapGesture)
    }

    @objc func handleDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}

