//
//  IPresent.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 31.03.2024.
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

protocol CoordinatorFinishOutput {
    var finishFlow: (Callback)? { get set }
}
