//
//  AllDaysCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import Foundation

final class AllDaysCoordinator : BaseCoordinator {
    private let router: IRouter
    private let coordinatorFactory: ICoordinatorFactory
    private let vcFactory: VCFactory
    
    init(router: IRouter, coordinatorFactory: ICoordinatorFactory, vcFactory: VCFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.vcFactory = vcFactory
    }
    
    override func start() {
        let vc = vcFactory.initAllDaysVC()
        showAllDaysVC(vc: vc)
    }
}

//All VCs of Coordinator
extension AllDaysCoordinator {
    
    private func showAllDaysVC(vc : AllDaysVC) {
        self.router.setRootModule(vc)
    }
    
    private func showAddHabitVC() {
        let vc = vcFactory.initAddHabitVC()
        vc.goBack = { [unowned self] in
            self.router.popModule()
        }
        self.router.push(vc)
    }
    
    private func showAllHabitsVC() {
        let vc = vcFactory.initAllHabitsVC()
        vc.goBack = { [unowned self] in
            self.router.popModule()
        }
        self.router.push(vc)
    }
    
    func startAndReturnVC() -> AllDaysVC{
        let vc = self.vcFactory.initAllDaysVC()
        self.showAllDaysVC(vc: vc)
        return vc
    }
}
