//
//  TabbarCoordinator.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabbarCoordinator: BaseCoordinator {
    
    private let tabbarView: TabbarView
    private let coordinatorFactory: CoordinatorFactory
    
    init(tabbarView: TabbarView, coordinatorFactory: CoordinatorFactory) {
        self.tabbarView = tabbarView
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        tabbarView.onViewDidLoad = runAllDaysFlow()
        tabbarView.onAllDaysFlowSelect = runAllDaysFlow()
        tabbarView.onTodayFlowSelect = runTodayFlow()
        tabbarView.onSettingsFlowSelect = runSettingsFlow()
    }
    
    private func runAllDaysFlow() -> ((UINavigationController) -> ()) {
        return { [unowned self] navController in
            if navController.viewControllers.isEmpty == true {
                let allDaysCoordinator = self.coordinatorFactory.makeAllDaysCoordinator(navController: navController)
                self.addDependency(allDaysCoordinator)
                allDaysCoordinator.start()
            }
        }
    }
    
    private func runTodayFlow() -> ((UINavigationController) -> ()) {
        return { [unowned self] navController in
            if navController.viewControllers.isEmpty == true {
                let todayCoordinator = self.coordinatorFactory.makeTodayCoordinator(navController: navController)
                self.addDependency(todayCoordinator)
                todayCoordinator.start()
            }
        }
    }
    
    private func runSettingsFlow() -> ((UINavigationController) -> ()) {
        return { [unowned self] navController in
            if navController.viewControllers.isEmpty == true {
                let settingsCoordinator = self.coordinatorFactory.makeSettingsCoordinator(navController: navController)
                self.addDependency(settingsCoordinator)
                settingsCoordinator.start()
            }
        }
    }
}

