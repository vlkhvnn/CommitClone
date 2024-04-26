//
//  HabitsCollectionViewCell.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
//

import UIKit

final class HabitsCollectionViewCell : UICollectionViewCell {
    
    static let identifier = "HabitsCollectionViewCell"
    
    private let view: UIView = {
        let view = UIView()
        view.backgroundColor = AppColor.emptyDay.uiColor
        view.layer.cornerRadius = 13
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 0.1
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(view)
        self.isUserInteractionEnabled = true
        self.backgroundColor = AppColor.background.uiColor
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        view.frame = self.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
