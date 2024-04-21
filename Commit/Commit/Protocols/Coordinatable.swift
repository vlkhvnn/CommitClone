//
//  Coordinatable.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 20.04.2024.
//

import UIKit

protocol Coordinatable : AnyObject, Router {
    var flowCompletionHandler : Callback? {get set}
    func start()
}
