//
//  TabBarController.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabBarController: MainTabBarController {
    
    private let images = [("square.grid.3x3", "square.grid.3x3.fill"),
                          ("square", "square.fill"),
                          ("gearshape", "gearshape.fill")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    func setupTabBar(with viewControllers : [UIViewController]) {
        setViewControllers(viewControllers, animated: true)
        setImagesToTabBar()
    }
    
    private func setImagesToTabBar() {
        setImage(to: 0, fill: true)
        setImage(to: 1, fill: false)
        setImage(to: 2, fill: false)
    }

    private func setImage(to index: Int, fill: Bool) {
        guard let items = tabBar.items else {
            return
        }
        
        if fill {
            items[index].image = UIImage(systemName: images[index].1)
        } else {
            items[index].image = UIImage(systemName: images[index].0)
        }
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let tabBarIndex = tabBarController.selectedIndex
        
        switch selectedIndex {
        case 0:
            setImage(to: 0, fill: true)
        case 1:
            setImage(to: 1, fill: true)
        case 2:
            setImage(to: 2, fill: true)
        default:
            setImage(to: 0, fill: true)
        }
    }
}

