//
//  VCFactory.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import UIKit

final class VCFactory {
    
    func initTabBarVC() -> TabBarVC {
        let vc = TabBarVC()
        return vc
    }
    
    func initAllDaysVC() -> AllDaysVC {
        let vc = AllDaysVC()
        vc.title = "all"
        return vc
    }
    
    func initTodayVC() -> TodayVC {
        let vc = TodayVC()
        vc.title = "today"
        return vc
    }
    
    func initSettingsVC() -> SettingsVC {
        let vc = SettingsVC()
        vc.title = "settings"
        return vc
    }
    
    func initAllHabitsVC() -> AllHabitsVC {
        let vc = AllHabitsVC()
        vc.title = "habits"
        return vc
    }
    
    func initAddHabitVC() -> AddHabitVC {
        let vc = AddHabitVC()
        return vc
    }
}
