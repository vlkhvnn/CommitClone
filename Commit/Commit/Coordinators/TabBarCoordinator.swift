//
//  TabBarCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

final class TabBarCoordinator: BaseCoordinator {
    private let router: IRouter
    private let coordinatorFactory: ICoordinatorFactory
    private let vcFactory: VCFactory
    
    init(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.vcFactory = vcFactory
    }
    
    override func start() {
        let tabBarVC = vcFactory.initTabBarVC()
        let allDaysCoordinator = coordinatorFactory.makeAllDaysCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        let todayCoordinator = coordinatorFactory.makeTodayCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        let settingsCoordinator = coordinatorFactory.makeSettingsCoordinator(router: router, coordinatorFactory: coordinatorFactory, vcFactory: vcFactory)
        
        [allDaysCoordinator, todayCoordinator, settingsCoordinator].forEach {
            self.addDependency($0)
        }
        
        let allDaysVC = allDaysCoordinator.startAndReturnVC()
        let todayVC = todayCoordinator.startAndReturnVC()
        let settingsVC = settingsCoordinator.startAndReturnVC()
        
        tabBarVC.setupTabBar(with: [allDaysVC, todayVC, settingsVC])
        
        self.router.setRootModule(tabBarVC)
    }
}
