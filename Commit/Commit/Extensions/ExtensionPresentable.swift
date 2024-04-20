//
//  ExtensionPresentable.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 12.04.2024.
//

import UIKit

extension UIViewController : Presentable {
    func toPresent() -> UIViewController? {
        return self
    }
}
