//
//  TodayController.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit

final class TodayController : GenericVC<TodayView>, TodayViewProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColor.background.uiColor
    }
}
