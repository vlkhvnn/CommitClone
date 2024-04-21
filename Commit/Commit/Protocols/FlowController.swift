//
//  FlowController.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 20.04.2024.
//

import UIKit

protocol FlowController {
    associatedtype T
    var completionHandler : ((T) -> ())? {get set}
}
