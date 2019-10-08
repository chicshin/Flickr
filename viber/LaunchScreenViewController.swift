//
//  ViewController.swift
//  viber
//
//  Created by Jane Shin on 9/24/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit
import Firebase

class LaunchScreenViewController: UIViewController {
    var window: UIWindow?
    var remoteConfig: RemoteConfig!
    var flickrLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "F L I C K R"
        label.font = UIFont(name: APPLESDGOTHICNEO_THIN, size: optimizedFontSize(size: 40))
        label.textColor = .white
        label.alpha = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(flickrLabel)
        
        remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        remoteConfig.setDefaults(fromPlist: "RemoteConfigDefaults")
        
        remoteConfig.fetch(withExpirationDuration: TimeInterval(0)) { (status, error) -> Void in
            if status == .success {
                print("Config fetched!")
                self.remoteConfig.activate(completionHandler: { (error) in
                    // ...
                })
            } else {
                print("Config not fetched")
                print("Error: \(error?.localizedDescription ?? "No error available.")")
            }
            self.displayRemoteMessage()
        }
        flickrLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        flickrLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }

    func displayRemoteMessage() {
        let caps = remoteConfig["remote_capability"].boolValue
        let message = remoteConfig["remote_message"].stringValue
        let title = remoteConfig["remote_title"].stringValue
        
        if(caps){
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { (action) in exit(0)
            }))
            
            self.present(alert, animated: true, completion: nil)
        } else {
            if (UserDefaults.standard.bool(forKey: "HasLaunchedOnce")) {
                self.flickrLabel.alpha = 1
                let mainTabBarController = MainTabBarController()
                mainTabBarController.modalPresentationStyle = .overFullScreen
                self.present(mainTabBarController, animated: true, completion: nil)
            } else {
                loadLaunchScreen()
                print("This is the first launch ever")
                UserDefaults.standard.set(true, forKey: "HasLaunchedOnce")
                UserDefaults.standard.synchronize()
            }
        }
    }
    
    func loadLaunchScreen() {
        UILabel.animate(withDuration: 3, delay: 1, options: .curveEaseIn, animations: {
            self.flickrLabel.alpha = 1
        }) { (completion) in
            UILabel.animate(withDuration: 2.5, delay: 0.5, options: .repeat, animations: {
                self.flickrLabel.alpha = 0
            }, completion: nil)
        }
    }
}


