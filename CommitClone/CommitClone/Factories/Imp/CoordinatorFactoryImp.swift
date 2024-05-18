//
//  CoordinatorFactoryImp.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class CoordinatorFactoryImp: CoordinatorFactory {
    func makeTabbarCoordinator(router: Router) -> TabbarCoordinator {
        let coordinator = TabbarCoordinator(coordinatorFactory: CoordinatorFactoryImp(), router: router)
        return coordinator
    }
    
    
    private let moduleFactory = ModuleFactoryImp()
    
    func makeAllDaysCoordinator(navController: UINavigationController?) -> AllDaysCoordinator {
        let coordinator = AllDaysCoordinator(router: router(navController),
                                             factory: moduleFactory,
                                             coordinatorFactory: CoordinatorFactoryImp()
        )
        return coordinator
    }
    
    func makeAllDaysCoordinator() -> AllDaysCoordinator {
        return makeAllDaysCoordinator(navController: nil)
    }
    
    func makeTodayCoordinator(navController: UINavigationController?) -> TodayCoordinator {
        let coordinator = TodayCoordinator(router: router(navController),
                                           factory: moduleFactory,
                                           coordinatorFactory: CoordinatorFactoryImp()
        )
        return coordinator
    }
    
    func makeTodayCoordinator() -> TodayCoordinator {
        return makeTodayCoordinator(navController: nil)
    }
    
    
    
    func makeSettingsCoordinator() -> SettingsCoordinator {
        return makeSettingsCoordinator(navController: nil)
    }
    
    func makeSettingsCoordinator(navController: UINavigationController? = nil) -> SettingsCoordinator {
        let coordinator = SettingsCoordinator(router: router(navController),
                                              factory: moduleFactory)
        return coordinator
    }
    
    
    private func router(_ navController: UINavigationController?) -> Router {
        return RouterImp(rootController: navigationController(navController))
    }
    
    private func navigationController(_ navController: UINavigationController?) -> UINavigationController {
        if let navController = navController { return navController }
        let tabbarController = TabbarController()
        return UINavigationController(rootViewController: tabbarController)
    }
}
