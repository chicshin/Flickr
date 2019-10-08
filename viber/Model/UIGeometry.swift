//
//  UIGeometry.swift
//  viber
//
//  Created by Jane Shin on 10/5/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import Foundation
import UIKit

func optimizedFontSize(size:CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" {
        return size
    } else if UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" {
        return size - 0.5
    } else if UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS" {
        return size - 1
    } else if UIDevice.modelName == "iPhone 6 Plus" || UIDevice.modelName == "iPhone 6s Plus" || UIDevice.modelName == "iPhone 7 Plus" || UIDevice.modelName == "iPhone 8 Plus"{
        return size - 1.5
    } else if UIDevice.modelName == "iPhone 6" || UIDevice.modelName == "iPhone 6s" || UIDevice.modelName == "iPhone 7" || UIDevice.modelName == "iPhone 8"{
        return size - 2
    } else {
        return size - 2.5
    }
}

func optimizedBottomConstant(constant: CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" || UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" || UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS"  {
        return constant
    } else {
        return constant + 20
    }
}

func optimizedTopButtonConstant(constant: CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" || UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" || UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS"  {
        return constant + 10
    } else {
        return constant + 20
    }
}

func optimizedTopTitleConstant(constant: CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" || UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" || UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS"  {
        return constant * 4
    } else {
        return constant * 7
    }
}

func optimizedCenterTextBoxWidth() -> CGFloat {
    return MAINSCREEN_WIDTH - 40
}

func optimizedCenterTableViewHeight() ->CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" {
        return MAINSCREEN_HEIGHT / 2.5
    } else if UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" {
        return MAINSCREEN_HEIGHT / 2.5
    } else if UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS" {
        return MAINSCREEN_HEIGHT / 2.5
    } else if UIDevice.modelName == "iPhone 6 Plus" || UIDevice.modelName == "iPhone 6s Plus" || UIDevice.modelName == "iPhone 7 Plus" || UIDevice.modelName == "iPhone 8 Plus"{
        return MAINSCREEN_HEIGHT / 2.5
    } else if UIDevice.modelName == "iPhone 6" || UIDevice.modelName == "iPhone 6s" || UIDevice.modelName == "iPhone 7" || UIDevice.modelName == "iPhone 8"{
        return MAINSCREEN_HEIGHT / 2.5
    } else {
        return MAINSCREEN_HEIGHT / 2.5
    }
}

func optimizedGapSize(size:CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" {
        return size
    } else if UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" {
        return size - 1
    } else if UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS" {
        return size - 2
    } else if UIDevice.modelName == "iPhone 6 Plus" || UIDevice.modelName == "iPhone 6s Plus" || UIDevice.modelName == "iPhone 7 Plus" || UIDevice.modelName == "iPhone 8 Plus"{
        return size - 3
    } else if UIDevice.modelName == "iPhone 6" || UIDevice.modelName == "iPhone 6s" || UIDevice.modelName == "iPhone 7" || UIDevice.modelName == "iPhone 8"{
        return size - 4
    } else {
        return size - 5
    }
}

func targetIconSize(imageName: String) -> CGFloat {
    let image = UIImage(named: imageName)
    let width = image!.size.width
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" {
        return width * 0.97
    } else if UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" {
        return width * 0.95
    } else if UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS" {
        return width * 0.95
    } else if UIDevice.modelName == "iPhone 6 Plus" || UIDevice.modelName == "iPhone 6s Plus" || UIDevice.modelName == "iPhone 7 Plus" || UIDevice.modelName == "iPhone 8 Plus"{
        return width * 0.9
    } else if UIDevice.modelName == "iPhone 6" || UIDevice.modelName == "iPhone 6s" || UIDevice.modelName == "iPhone 7" || UIDevice.modelName == "iPhone 8"{
        return width * 0.9
    } else {
        return width * 0.85
    }
}

func cellForRowHeightWithFiedArray(tableViewHeight: CGFloat, numberOfItems: CGFloat) -> CGFloat {
    if UIDevice.modelName == "iPhone XS Max" || UIDevice.modelName == "iPhone 11 Pro Max" {
        return tableViewHeight / numberOfItems
    } else if UIDevice.modelName == "iPhone XR" || UIDevice.modelName == "iPhone 11" {
        return tableViewHeight / numberOfItems
    } else if UIDevice.modelName == "iPhone 11 Pro" || UIDevice.modelName == "iPhone X" || UIDevice.modelName == "iPhone XS" {
        return tableViewHeight / numberOfItems
    } else if UIDevice.modelName == "iPhone 6 Plus" || UIDevice.modelName == "iPhone 6s Plus" || UIDevice.modelName == "iPhone 7 Plus" || UIDevice.modelName == "iPhone 8 Plus"{
        return tableViewHeight / numberOfItems
    } else if UIDevice.modelName == "iPhone 6" || UIDevice.modelName == "iPhone 6s" || UIDevice.modelName == "iPhone 7" || UIDevice.modelName == "iPhone 8"{
        return tableViewHeight / numberOfItems
    } else {
        return tableViewHeight / numberOfItems
    }
}
