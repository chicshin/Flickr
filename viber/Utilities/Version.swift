//
//  Versions.swift
//  viber
//
//  Created by Jane Shin on 9/25/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import Foundation
class Versions {
    func checkCurrentVersion() -> String {
        var currentVersion: String?
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        if let version = version{
            currentVersion = version
        }
        return currentVersion!
    }
    
    func fetchVersion() {
        if checkCurrentVersion() == "1.0" {
            print("current version: ", checkCurrentVersion())
        }
    }
}
