//
//  VCFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import UIKit

class ViewControllerFactory {
    
    func initTabBarVC() -> TabBarController {
        let vc = TabBarController()
        return vc
    }
    
    func initAllDaysVC() -> AllDaysController {
        let vc = AllDaysController()
        vc.title = "all"
        return vc
    }
    
    func initTodayVC() -> TodayController {
        let vc = TodayController()
        vc.title = "today"
        return vc
    }
    
    func initSettingsVC() -> SettingsController {
        let vc = SettingsController()
        vc.title = "settings"
        return vc
    }
    
    func initAllHabitsVC() -> AllHabitsVC {
        let vc = AllHabitsVC()
        return vc
    }
    
    func initAddHabitVC() -> AddHabitVC {
        let vc = AddHabitVC()
        return vc
    }
}

