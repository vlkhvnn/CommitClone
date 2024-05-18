//
//  CoordinatorFinishOutput.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 16.05.2024.
//

import Foundation

protocol CoordinatorFinishOutput {
    var finishFlow: (Callback)? { get set }
}
