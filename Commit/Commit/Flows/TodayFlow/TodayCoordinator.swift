//
//  TodayCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TodayCoordinator : BaseCoordinator {
    //MARK: - CoordinatorFinishOutput
    
    var finishFlow: Callback?
    
    //MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    //MARK: - Private Methods
    
    private func showSettingsVC(vc: TodayController) {
        self.router.setRootModule(vc)
    }
    
    //MARK: - Coordinator
    
    override func start() {
        let vc = self.viewControllerFactory.initTodayVC()
        self.showSettingsVC(vc: vc)
    }
    
    func startAndReturnVC() -> TodayController {
        let vc = self.viewControllerFactory.initTodayVC()
        self.showSettingsVC(vc: vc)
        return vc
    }
    
    // MARK: - Init
    
    init(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
    }
}
