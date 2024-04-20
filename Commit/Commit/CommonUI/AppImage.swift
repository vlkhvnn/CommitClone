//
//  AppImage.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

public protocol AppImageProtocol {
    var rawValue: String { get }
}

public extension AppImageProtocol {
    var uiImage: UIImage? {
        guard let image = UIImage(named: rawValue) else {
            fatalError("Could not find image with name \(rawValue)")
        }
        return image
    }
    
    var systemImage: UIImage? {
        guard let image = UIImage(systemName: rawValue) else {
            fatalError("Could not find image with name \(rawValue)")
        }
        return image
    }
}

public enum AppImage: String, AppImageProtocol {
    case background
    case leftBar = "line.3.horizontal.circle"
    case rightBar = "plus.circle"
}
