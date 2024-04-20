//
//  AppCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

final class AppCoordinator : BaseCoordinator {
    
    private let router : IRouter
    
    override func start() {
        let coordinator = self.coordinatorFactory.makeTabBarCoordinator(router: self.router, coordinatorFactory: self.coordinatorFactory, vcFactory: vcFactory)
        self.addDependency(coordinator)
        coordinator.start()
    }
    
    init(router: IRouter, coordinatorFactory: ICoordinatorFactory) {
        self.router.rootv
        self.presenter = UITabBarController()
        super.init(vcFactory: <#VCFactory#>, coordinatoFactory: <#ICoordinatorFactory#>)
    }
}
