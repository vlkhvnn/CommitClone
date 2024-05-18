//
//  SettingsCoordinator.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class SettingsCoordinator: BaseCoordinator {
    
    private let factory: SettingsModuleFactory
    private let router: Router
    
    init(router: Router, factory: SettingsModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        let vc = self.factory.makeSettingsOutput()
        showSettingsVC(vc: vc)
    }
    
    func startAndReturnVC() -> SettingsViewProtocol {
        let vc = factory.makeSettingsOutput()
        self.showSettingsVC(vc: vc)
        return vc
    }
    
    //MARK: - Run current flow's controllers
    
    private func showSettingsVC(vc: SettingsViewProtocol) {
        self.router.setRootModule(vc)
    }
}
