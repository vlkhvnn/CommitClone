//
//  ModuleFactoryImp.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import Foundation

final class ModuleFactoryImp : AllDaysModuleFactory, TodayModuleFactory, SettingsModuleFactory {
    func makeAllDaysOutput() -> AllDaysView {
        return AllDaysController()
    }
    
    func makeTodayOutput() -> TodayView {
        return TodayController()
    }
    
    func makeSettingsOutput() -> SettingsView {
        return SettingsController()
    }
}
