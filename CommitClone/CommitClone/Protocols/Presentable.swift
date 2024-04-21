//
//  Presentable.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    
    func toPresent() -> UIViewController? {
        return self
    }
}
