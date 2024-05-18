//
//  AllDaysModuleFactory.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import Foundation

protocol AllDaysModuleFactory {
    func makeAllDaysOutput() -> AllDaysViewProtocol
    func makeAddHabitOutput() -> AddHabitViewProtocol
    func makeAllHabitsOutput() -> AllHabitsView
}
