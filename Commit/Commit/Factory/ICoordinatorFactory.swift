//
//  ICoordinatorFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 31.03.2024.
//

import UIKit

protocol ICoordinatorFactory {
    
    func createAllDaysCoordinatorTuple() -> (allDaysCoordinator: AllDaysCoordinator, presenter: UINavigationController)
    func createTodayCoordinatorTuple() -> (todayCoordinator: TodayCoordinator, presenter: UINavigationController)
    func createSettingsCoordinatorTuple() -> (settingsCoordinator: SettingsCoordinator, presenter: UINavigationController)
}
