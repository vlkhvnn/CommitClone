//
//  AppColor.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

public protocol AppColorProtocol {
    var rawValue: String { get }
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
    
}
