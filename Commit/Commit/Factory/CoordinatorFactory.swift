//
//  CoordinatorFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import UIKit

final class CoordinatorFactory : ICoordinatorFactory {
    func createAllDaysCoordinatorTuple() -> (allDaysCoordinator: AllDaysCoordinator, presenter: UINavigationController) {
        let presenter = UINavigationController()
        return (AllDaysCoordinator(presenter: presenter), presenter)
    }
    
    func createTodayCoordinatorTuple() -> (todayCoordinator: TodayCoordinator, presenter: UINavigationController) {
        <#code#>
    }
    
    func createSettingsCoordinatorTuple() -> (settingsCoordinator: SettingsCoordinator, presenter: UINavigationController) {
        <#code#>
    }
    
    
}
