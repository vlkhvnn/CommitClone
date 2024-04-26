//
//  GenericVC.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
//

import UIKit

class GenericVC<T: UIView>: UIViewController {
    
    public var rootView: T { return view as! T }
    
    override open func loadView() {
        self.view = T()
    }
}
