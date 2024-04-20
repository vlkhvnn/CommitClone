//
//  BaseCoordinator.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

open class BaseCoordinator : ICoordinator {
    
    //MARK: Variables
    
    var childCoordinators = [ICoordinator]()
    var presenter : UINavigationController?
    var flowCompletionHandler : Callback?
    var vcFactory : VCFactory
    var coordinatorFactory : ICoordinatorFactory
    
    init(presenter: UINavigationController? = nil, vcFactory: VCFactory, coordinatoFactory: ICoordinatorFactory) {
        self.presenter = presenter
        self.vcFactory = VCFactory()
        self.coordinatorFactory = CoordinatorFactory()
    }
    
    
    //MARK: Public methods
    
    func addDependency(_ coordinator: ICoordinator) {
        for child in childCoordinators {
            if child === coordinator { return }
        }
        self.childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: ICoordinator?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }
        for (index, child) in childCoordinators.enumerated() {
            if child === child {
                self.childCoordinators.remove(at: index)
            }
        }
    }
    
    //MARK: ICoordinator
    
    func start() {}
}
