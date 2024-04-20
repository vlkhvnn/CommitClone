//
//  TodayCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import Foundation

final class TodayCoordinator : BaseCoordinator {
    private let router: IRouter
    private let coordinatorFactory: ICoordinatorFactory
    private let vcFactory: VCFactory
    
    init(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.vcFactory = vcFactory
    }
}

extension TodayCoordinator {
    func startAndReturnVC() -> TodayVC{
        let vc = vcFactory.initTodayVC()
        showTodayVC(vc: vc)
        return vc
    }
    
    private func showTodayVC(vc : TodayVC) {
        self.router.setRootModule(vc)
    }
}
