//
//  AppDelegate.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var applicationCoordinator: Coordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootController = UINavigationController()

        self.window?.makeKeyAndVisible()

        self.window?.rootViewController = rootController
        
        applicationCoordinator = ApplicationCoordinator(
            router: RouterImp(rootController: rootController),
            coordinatorFactory: CoordinatorFactoryImp()
        )
        applicationCoordinator?.start()

        return true
    }
}


