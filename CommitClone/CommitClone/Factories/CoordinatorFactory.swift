//
//  CoordinatorFactory.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

protocol CoordinatorFactory {
    
    func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?)
    
    func makeAllDaysCoordinator(navController: UINavigationController?) -> Coordinator
    func makeAllDaysCoordinator() -> Coordinator
    
    func makeTodayCoordinator(navController: UINavigationController?) -> Coordinator
    func makeTodayCoordinator() -> Coordinator
    
    func makeSettingsCoordinator() -> Coordinator
    func makeSettingsCoordinator(navController: UINavigationController?) -> Coordinator
    
}

