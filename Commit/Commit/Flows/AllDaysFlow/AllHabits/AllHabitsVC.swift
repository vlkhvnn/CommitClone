//
//  AllHabitsVC.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 15.04.2024.
//

import UIKit

protocol IAllHabitsVC {
    var goBack : Callback? {get set}
}

final class AllHabitsVC : UIViewController, IAllHabitsVC {
    
    var goBack: Callback?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
    }
    
    
}
