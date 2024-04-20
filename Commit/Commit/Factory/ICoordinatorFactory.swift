//
//  ICoordinatorFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 31.03.2024.
//

import UIKit

protocol ICoordinatorFactory {
    func makeTabBarCoordinator(router: IRouter, coordinatorFactory : ICoordinatorFactory, vcFactory : VCFactory) -> TabBarCoordinator
    func makeAllDaysCoordinator(router: IRouter, coordinatorFactory : ICoordinatorFactory, vcFactory : VCFactory) -> AllDaysCoordinator
    func makeTodayCoordinator(router: IRouter, coordinatorFactory : ICoordinatorFactory, vcFactory : VCFactory) -> TodayCoordinator
    func makeSettingsCoordinator(router: IRouter, coordinatorFactory : ICoordinatorFactory, vcFactory : VCFactory) -> SettingsCoordinator
}
