//
//  CoordinatorFactory.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

protocol CoordinatorFactory {
    
    func makeTabbarCoordinator(router: Router) -> TabbarCoordinator
    
    func makeAllDaysCoordinator(navController: UINavigationController?) -> AllDaysCoordinator
    func makeAllDaysCoordinator() -> AllDaysCoordinator
    
    func makeTodayCoordinator(navController: UINavigationController?) -> TodayCoordinator
    func makeTodayCoordinator() -> TodayCoordinator
    
    func makeSettingsCoordinator() -> SettingsCoordinator
    func makeSettingsCoordinator(navController: UINavigationController?) -> SettingsCoordinator
    
}

