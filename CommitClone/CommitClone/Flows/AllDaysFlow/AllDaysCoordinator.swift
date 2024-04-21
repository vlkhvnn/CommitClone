//
//  AllDaysCoordinator.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class AllDaysCoordinator: BaseCoordinator {
    
    private let factory: AllDaysModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, factory: AllDaysModuleFactory, coordinatorFactory: CoordinatorFactory) {
      self.router = router
      self.factory = factory
      self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        showAllDays()
    }
    
    //MARK: - Run current flow's controllers
    
    private func showAllDays() {
        let allDaysFlowOutput = factory.makeAllDaysOutput()
        router.setRootModule(allDaysFlowOutput)
    }
}
