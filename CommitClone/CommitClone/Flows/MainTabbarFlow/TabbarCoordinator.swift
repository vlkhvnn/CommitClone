//
//  TabbarCoordinator.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabbarCoordinator: BaseCoordinator {
    
    private let coordinatorFactory: CoordinatorFactory
    private let moduleFactory = ModuleFactoryImp()
    private let router: Router
    
    init(coordinatorFactory: CoordinatorFactory, router: Router) {
        self.coordinatorFactory = coordinatorFactory
        self.router = router
    }
    
    override func start() {
        showTabbarVC()
    }
    
    private func showTabbarVC() {
        let tabbar = TabbarController()
        let allDaysCoordinator = coordinatorFactory.makeAllDaysCoordinator()
        let todayCoordinator = coordinatorFactory.makeTodayCoordinator()
        let settingsCoordinator = coordinatorFactory.makeSettingsCoordinator()
        
        self.addDependency(allDaysCoordinator)
        self.addDependency(todayCoordinator)
        self.addDependency(settingsCoordinator)
        
        let allDaysVC = UINavigationController(rootViewController: allDaysCoordinator.startAndReturnVC())
        let todayVC = UINavigationController(rootViewController: todayCoordinator.startAndReturnVC())
        let settingsVC = UINavigationController(rootViewController: settingsCoordinator.startAndReturnVC())
        
        allDaysVC.tabBarItem = UITabBarItem(title: "All",
                                            image: AppImage.allDays.systemImage,
                                            selectedImage: AppImage.allDaysSelected.systemImage
        )
        todayVC.tabBarItem = UITabBarItem(title: "Today",
                                          image: AppImage.today.systemImage,
                                          selectedImage: AppImage.todaySelected.systemImage
        )
        
        settingsVC.tabBarItem = UITabBarItem(title: "Settings",
                                             image: AppImage.settings.systemImage,
                                             selectedImage: AppImage.settingsSelected.systemImage
        )
        
        tabbar.setupVC(with: [allDaysVC, todayVC, settingsVC])
        router.setRootModule(tabbar, hideBar: true)
    }
}


