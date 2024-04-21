//
//  AddHabitVC.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 15.04.2024.
//

import UIKit

protocol IAddHabitVC {
    var goBack : Callback? { get set}
}

final class AddHabitVC : UIViewController, IAddHabitVC {
    
    var goBack : Callback?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
