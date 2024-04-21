//
//  AllDaysCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import Foundation

class AllDaysCoordinator: BaseCoordinator, CoordinatorFinishOutput {
    //MARK: - CoordinatorFinishOutput
    
    var finishFlow: Callback?
    
    //MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    //MARK: - Private Methods
    
    private func showAllDaysVC(vc: AllDaysController) {
        
        self.router.setRootModule(vc)
    }
    
    private func showAllHabitsVC() {
        let vc = viewControllerFactory.initAllHabitsVC()
        
        self.router.push(vc)
    }
    
    private func showAddHabitVC() {
        let vc = viewControllerFactory.initAddHabitVC()
        
        self.router.push(vc)
    }
    
    //MARK: - Coordinator
    
    override func start() {
        let vc = self.viewControllerFactory.initAllDaysVC()
        self.showAllDaysVC(vc: vc)
    }
    
    func startAndReturnVC() -> AllDaysController{
        let vc = self.viewControllerFactory.initAllDaysVC()
        self.showAllDaysVC(vc: vc)
        return vc
    }
    
    // MARK: - Init
    
    init(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
    }
}
