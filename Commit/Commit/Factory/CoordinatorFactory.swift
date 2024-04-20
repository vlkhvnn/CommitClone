//
//  CoordinatorFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import UIKit

final class CoordinatorFactory : ICoordinatorFactory {
    
    func makeTodayCoordinator(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) -> TodayCoordinator {
        let coordinator = TodayCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        return coordinator
    }
    
    func makeTabBarCoordinator(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) -> TabBarCoordinator {
        let coordinator = TabBarCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        return coordinator
    }
    
    func makeAllDaysCoordinator(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) -> AllDaysCoordinator {
        let coordinator = AllDaysCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        return coordinator
    }
    
    func makeSettingsCoordinator(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) -> SettingsCoordinator {
        let coordinator = SettingsCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        return coordinator
    }
}
