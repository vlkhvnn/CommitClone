//
//  MainTabBarController.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 30.03.2024.
//

import UIKit

open class MainTabBarController: UITabBarController {
    public override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)

        // TODO: use common colors
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = AppColor.background.uiColor
    }
}

