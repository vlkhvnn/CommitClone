//
//  AddHabitController.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
//

import UIKit

final class AddHabitController : GenericVC<AddHabitView>, AddHabitViewProtocol {
    
    var confirmedHabit: Callback?
    var goBack: Callback?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
