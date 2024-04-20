//
//  SettingsCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import Foundation

final class SettingsCoordinator : BaseCoordinator {
    private let router: IRouter
    private let coordinatorFactory: ICoordinatorFactory
    private let vcFactory: VCFactory
    
    init(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.vcFactory = vcFactory
    }
}


extension SettingsCoordinator {
    
    private func showSettingsVC(vc: SettingsVC) {
        self.router.setRootModule(vc)
    }
    
    func startAndReturnVC() -> SettingsVC {
        let vc = self.vcFactory.initSettingsVC()
        self.showSettingsVC(vc: vc)
        return vc
    }
}
