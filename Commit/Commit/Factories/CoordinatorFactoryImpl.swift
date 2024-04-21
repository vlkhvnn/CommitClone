//
//  CoordinatorFactoryImpl.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class CoordinatorFactoryImpl: CoordinatorFactory {
    func makeTabBarCoordinatorBox(router: Router, coordinatorFactory: CoordinatorFactory, viewControllerFactory: VCFactory) -> TabBarCoordinator {
        let coordinator = TabBarCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
        return coordinator
    }
    
    func makeAllDaysCoordinatorBox(router: Router, coordinatorFactory: CoordinatorFactory, viewControllerFactory: VCFactory) -> AllDaysCoordinator {
        let coordinator = AllDaysCoordinator(vcFactory: viewControllerFactory, coordinatorFactory: coordinatorFactory, router: RouterImp(rootController: UINavigationController()))
        return coordinator
    }
    
    func makeSettingsCoordinatorBox(router: Router, coordinatorFactory: CoordinatorFactory, viewControllerFactory: VCFactory) -> SettingsCoordinator {
        <#code#>
    }
    
}

