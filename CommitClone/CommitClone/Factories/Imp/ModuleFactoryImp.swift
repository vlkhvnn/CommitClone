//
//  ModuleFactoryImp.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import Foundation

final class ModuleFactoryImp : AllDaysModuleFactory, TodayModuleFactory, SettingsModuleFactory {
    func makeAllHabitsOutput() -> AllHabitsView {
        let vc = AllHabitsController()
        return vc
    }
    
    func makeAddHabitOutput() -> AddHabitView {
        let vc = AddHabitController()
        return vc
    }
    
    func makeAllDaysOutput() -> AllDaysViewProtocol {
        let vc = AllDaysController()
        return vc
    }
    
    func makeTodayOutput() -> TodayView {
        let vc = TodayController()
        return vc
    }
    
    func makeSettingsOutput() -> SettingsView {
        let vc = SettingsController()
        return vc
    }
}
