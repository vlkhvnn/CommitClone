//
//  AllDaysCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

final class AllDaysCoordinator : Coordinatable {
    var flowCompletionHandler: Callback?
    
    private let coordinatorFactory: ICoordinatorFactory
    private let vcFactory: VCFactory
    weak var presenter: UINavigationController?
    var childCoordinators = [Coordinatable]()
    
    init(presenter: UINavigationController?) {
        self.presenter = presenter
        vcFactory = VCFactory()
        coordinatorFactory = CoordinatorFactory()
    }
    
    func start() {
        showAllDaysVC()
    }
}

//All VCs of Coordinator
extension AllDaysCoordinator {
    
    private func showAllDaysVC() {
        let vc = vcFactory.initAllDaysVC()
        self.push(controller: vc, animated: true)
    }
    
    func startAndReturnVC() -> AllDaysVC{
        let vc = self.vcFactory.initAllDaysVC()
        self.showAllDaysVC()
        return vc
    }
}
