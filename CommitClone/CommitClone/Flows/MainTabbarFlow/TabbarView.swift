//
//  TabbarView.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

protocol TabbarView: AnyObject {
    var onAllDaysFlowSelect : ((UINavigationController) -> ())? { get set }
    var onTodayFlowSelect : ((UINavigationController) -> ())? { get set }
    var onSettingsFlowSelect: ((UINavigationController) -> ())? { get set }
    var onViewDidLoad: ((UINavigationController) -> ())? { get set }
}
