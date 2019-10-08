//
//  Localized.swift
//  viber
//
//  Created by Jane Shin on 9/26/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import Foundation

extension String {
     var localized: String {
           return NSLocalizedString(self, tableName: "Localizable", value: self, comment: "")
        }
}
