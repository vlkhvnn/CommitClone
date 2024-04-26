//
//  AppImage.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
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

public enum AppImage : String, AppImageProtocol {
    case leftBarButton = "line.3.horizontal.circle"
    case rightBarButton = "plus.circle"
    case allDays = "square.grid.3x3"
    case allDaysSelected = "square.grid.3x3.fill"
    case today = "square"
    case todaySelected = "square.fill"
    case settings = "gearshape"
    case settingsSelected = "gearshape.fill"
}
