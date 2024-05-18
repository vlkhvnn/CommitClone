//
//  TabbarController\.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = AppColor.background.uiColor
        configureTabBar()
    }
    
    private func configureTabBar() {
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = AppColor.background.uiColor
        let systemFontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
        UITabBarItem.appearance().setTitleTextAttributes(systemFontAttributes, for: .normal)
    }
    
    func setupVC(with viewControllers: [UIViewController]) {
        setViewControllers(viewControllers, animated: true)
    }
}

