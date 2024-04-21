//
//  Router.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 31.03.2024.
//

import UIKit

protocol Router {
    var presenter : UINavigationController? {get set}
    func present(controller: UIViewController, animated: Bool)
    func push(controller: UIViewController, animated: Bool)
    func popController(animated: Bool)
    func dismissController(animated: Bool)
}

extension Router {
    func present(controller: UIViewController, animated: Bool = true) {
        presenter?.present(controller, animated: animated, completion: nil)
    }
    
    func push(controller: UIViewController, animated: Bool = true) {
        presenter?.pushViewController(controller, animated: animated)
    }
    
    func popController(animated: Bool = true) {
        presenter?.popViewController(animated: animated)
    }
    
    func dismissController(animated: Bool = true) {
        presenter?.dismiss(animated: animated, completion: nil)
    }
}
