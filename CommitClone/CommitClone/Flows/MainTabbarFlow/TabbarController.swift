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
    
    private let moduleFactory = ModuleFactoryImp()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = AppColor.background.uiColor
                  
        configureTabBar()
        navigationItem.hidesBackButton = true
        self.delegate = self
        setupTabBar()
    }
    
    private func configureTabBar() {
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = AppColor.background.uiColor
        let systemFontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
        UITabBarItem.appearance().setTitleTextAttributes(systemFontAttributes, for: .normal)
    }
    
    private func setupTabBar() {
        // Instantiate the view controllers for each tab and assign them to the tab bar
        
        let vc1 = moduleFactory.makeAllDaysOutput() as! UIViewController
        let vc2 = moduleFactory.makeTodayOutput() as! UIViewController
        let vc3 = moduleFactory.makeSettingsOutput() as! UIViewController
        
        vc1.tabBarItem = UITabBarItem(title: "all",
                                      image: AppImage.allDays.systemImage,
                                      tag: 0)
        vc1.tabBarItem.selectedImage = AppImage.allDaysSelected.systemImage
        vc2.tabBarItem = UITabBarItem(title: "today",
                                      image: AppImage.today.systemImage,
                                      tag: 1)
        vc2.tabBarItem.selectedImage = AppImage.todaySelected.systemImage
        vc3.tabBarItem = UITabBarItem(title: "settings",
                                      image: AppImage.settings.systemImage,
                                      tag: 2)
        vc3.tabBarItem.selectedImage = AppImage.settingsSelected.systemImage
        
        let controllers = [vc1, vc2, vc3]

        self.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }

        if let controller = customizableViewControllers?.first as? UINavigationController {
            onViewDidLoad?(controller)
        }
    }
    
    
}

extension TabbarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
        
        switch selectedIndex {
        case 0:
            onAllDaysFlowSelect?(controller)
        case 1:
            onTodayFlowSelect?(controller)
        case 2:
            onSettingsFlowSelect?(controller)
        default:
            onAllDaysFlowSelect?(controller)
        }
    }
}
