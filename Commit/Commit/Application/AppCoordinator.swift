//
//  AppCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

fileprivate var onboardingWasShown = false

fileprivate enum LaunchInstructor {
    case main, onboarding
    
    static func configure(tutorialWasShown: Bool = onboardingWasShown) -> LaunchInstructor {
        
        if tutorialWasShown {
            return .main
        }
        return .onboarding
    }
}

final class ApplicationCoordinator: BaseCoordinator {
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let router: RouterProtocol
    private var launchInstructor = LaunchInstructor.configure()
    private let viewControllerFactory: ViewControllerFactory = ViewControllerFactory()
    
    // MARK: - Coordinator
   
    override func start() {
        runMainFlow()
    }
    
    // MARK: - Private methods
    
    private func runMainFlow() {
        let coordinator = self.coordinatorFactory.makeTabBarCoordinatorBox(router: self.router, coordinatorFactory: CoordinatorFactory(), viewControllerFactory: ViewControllerFactory())
        coordinator.finishFlow = { [unowned self, unowned coordinator] in
            self.removeDependency(coordinator)
            self.start()
        }
        self.addDependency(coordinator)
        coordinator.start()
    }
    
    // MARK: - Init
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
}


