//
//  TabbarController\.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TabbarController: UITabBarController, TabbarView {
    
    var onAllDaysFlowSelect: ((UINavigationController) -> ())?
    var onTodayFlowSelect: ((UINavigationController) -> ())?
    var onSettingsFlowSelect: ((UINavigationController) -> ())?
    var onViewDidLoad: ((UINavigationController) -> ())?
    
    private let images = [("square.grid.3x3", "square.grid.3x3.fill"),
                          ("square", "square.fill"),
                          ("gearshape", "gearshape.fill")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(named: "background-color")
                  
        configureTabBar()
        navigationItem.hidesBackButton = true
        self.delegate = self
        setupTabBar()
    }
    
    private func configureTabBar() {
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = UIColor(named: "background-color")
        modalPresentationStyle = .fullScreen
        
        let systemFontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
        UITabBarItem.appearance().setTitleTextAttributes(systemFontAttributes, for: .normal)
    }

    private func setImagesToTabBar() {
        setImage(to: 0, fill: true)
        setImage(to: 1, fill: false)
        setImage(to: 2, fill: false)
    }
    
    func setImage(to index: Int, fill: Bool) {
        guard let items = tabBar.items else {
            return
        }
        
        if fill {
            items[index].image = UIImage(systemName: images[index].1)
        } else {
            items[index].image = UIImage(systemName: images[index].0)
        }
    }
    
    private func setupTabBar() {
        // Instantiate the view controllers for each tab and assign them to the tab bar
        let allDaysController = UINavigationController(rootViewController: AllDaysController())
        
        let todayController = UINavigationController(rootViewController: TodayController())

        let settingsViewController = UINavigationController(rootViewController: SettingsController())

        self.viewControllers = [allDaysController, todayController,settingsViewController]

        self.selectedIndex = 0

        if let controller = customizableViewControllers?.first as? UINavigationController {
            onViewDidLoad?(controller)
        }
        setImagesToTabBar()
    }
    
    
}

extension TabbarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
        
        switch selectedIndex {
        case 0:
            onAllDaysFlowSelect?(controller)
            setImage(to: 0, fill: true)
        case 1:
            onTodayFlowSelect?(controller)
            setImage(to: 1, fill: true)
        case 2:
            onSettingsFlowSelect?(controller)
            setImage(to: 2, fill: true)
        default:
            onAllDaysFlowSelect?(controller)
            setImage(to: 0, fill: true)
        }
    }
}
