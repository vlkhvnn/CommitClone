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
        let vc = factory.makeAllDaysOutput()
        showAllDays(vc: vc)
    }
    
    //MARK: - Run current flow's controllers
    
    func startAndReturnVC() -> AllDaysViewProtocol {
        let vc = factory.makeAllDaysOutput()
        showAllDays(vc: vc)
        return vc
    }
    
    private func showAllDays(vc: AllDaysViewProtocol) {
        router.setRootModule(vc)
    }
}
