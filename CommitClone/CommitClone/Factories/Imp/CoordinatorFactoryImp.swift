//
//  CoordinatorFactoryImp.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class CoordinatorFactoryImp: CoordinatorFactory {
    
    func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?) {
        let controller = TabbarController()
        let coordinator = TabbarCoordinator(tabbarView: controller, coordinatorFactory: CoordinatorFactoryImp())
        return (coordinator, controller)
    }
    
    func makeAllDaysCoordinator(navController: UINavigationController?) -> Coordinator {
        let coordinator = AllDaysCoordinator(router: router(navController),
                                             factory: ModuleFactoryImp(),
                                             coordinatorFactory: CoordinatorFactoryImp()
        )
        return coordinator
    }
    
    func makeAllDaysCoordinator() -> Coordinator {
        return makeAllDaysCoordinator(navController: nil)
    }
    
    func makeTodayCoordinator(navController: UINavigationController?) -> Coordinator {
        let coordinator = TodayCoordinator(router: router(navController),
                                           factory: ModuleFactoryImp(),
                                           coordinatorFactory: CoordinatorFactoryImp()
        )
        return coordinator
    }
    
    func makeTodayCoordinator() -> Coordinator {
        return makeTodayCoordinator(navController: nil)
    }
    
    
    
    func makeSettingsCoordinator() -> Coordinator {
        return makeSettingsCoordinator(navController: nil)
    }
    
    func makeSettingsCoordinator(navController: UINavigationController? = nil) -> Coordinator {
        let coordinator = SettingsCoordinator(router: router(navController), 
                                              factory: ModuleFactoryImp()
        )
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
