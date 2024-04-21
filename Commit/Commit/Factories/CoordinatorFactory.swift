//
//  CoordinatorFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    func makeTabBarCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> TabBarCoordinator
    func makeAllDaysCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> AllDaysCoordinator
    func makeSettingsCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> SettingsCoordinator
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    
    func makeTabBarCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> TabBarCoordinator {
        let coordinator = TabBarCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
        return coordinator
    }
    
    func makeAllDaysCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> AllDaysCoordinator {
        let coordinator = AllDaysCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
        return coordinator
    }
    
    func makeSettingsCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> SettingsCoordinator {
        let coordinator = SettingsCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
        return coordinator
    }
    
}

