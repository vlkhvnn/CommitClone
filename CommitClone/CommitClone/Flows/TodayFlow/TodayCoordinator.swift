//
//  TodayCoordinator.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TodayCoordinator : BaseCoordinator {
    private let factory: TodayModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, factory: TodayModuleFactory, coordinatorFactory: CoordinatorFactory) {
      self.router = router
      self.factory = factory
      self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        let vc = self.factory.makeTodayOutput()
        showTodayVC(vc: vc)
    }
    
    //MARK: - Run current flow's controllers
    
    private func showTodayVC(vc : TodayViewProtocol) {
        router.setRootModule(vc)
    }
    
    func startAndReturnVC() -> TodayViewProtocol{
        let vc = factory.makeTodayOutput()
        showTodayVC(vc: vc)
        return vc
    }
}
