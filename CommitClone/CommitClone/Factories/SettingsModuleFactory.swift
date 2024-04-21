//
//  SettingsModuleFactory.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import Foundation

protocol SettingsModuleFactory {
    func makeSettingsOutput() -> SettingsView
}
