//
//  AppColor.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
//

import UIKit

public protocol AppColorProtocol {
    var rawValue : String {get}
}

public extension AppColorProtocol {
    var uiColor: UIColor {
        guard let color = UIColor(named: rawValue) else {
            fatalError("Could not find color with name \(rawValue)")
        }
        return color
    }

    var cgColor: CGColor {
        return uiColor.cgColor
    }
}

public enum AppColor : String, AppColorProtocol {
    case background
    case emptyDay
}
