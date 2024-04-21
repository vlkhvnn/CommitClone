//
//  TabBarCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabBarCoordinator: BaseCoordinator, CoordinatorFinishOutput {
    
    //MARK: - CoordinatorFinishOutput
    
    var finishFlow: Callback?
    
    //MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    // MARK: - Coordinator
    override func start() {
        showTabBarVC()
    }
    
    //MARK: - Private methods
    
    private func showTabBarVC() {
        let tabBarVC = self.viewControllerFactory.initTabBarVC()
        let navVC1 = UINavigationController()
        let navVC2 = UINavigationController()
        let allDaysCoordinator = self.coordinatorFactory.makeAllDaysCoordinatorBox(router: Router(rootController: navVC1), coordinatorFactory: self.coordinatorFactory, viewControllerFactory: self.viewControllerFactory)
        let todayVC = self.viewControllerFactory.initTodayVC()
        let settingsCoordinator = self.coordinatorFactory.makeSettingsCoordinatorBox(router: Router(rootController: navVC2), coordinatorFactory: self.coordinatorFactory, viewControllerFactory: self.viewControllerFactory)
        
        settingsCoordinator.finishFlow = { [unowned self] in
            self.removeDependency(settingsCoordinator)
            self.removeDependency(allDaysCoordinator)
            self.finishFlow?()
        }
        
        self.addDependency(allDaysCoordinator)
        self.addDependency(settingsCoordinator)
        
        let allDays = allDaysCoordinator.startAndReturnVC()
        let settingsVC = settingsCoordinator.startAndReturnVC()
        
        tabBarVC.setupTabBar(with: [allDays, todayVC, settingsVC])
        
        self.router.setRootModule(tabBarVC)
    }
    
    
    
    
    //MARK: - Init
    
    init(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
    }
    
}
