//
//  AddHabitView.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 26.04.2024.
//

import UIKit
import SnapKit

protocol AddHabitViewProtocol: BaseView {
    var confirmedHabit : Callback? { get set }
    var goBack : Callback? {get set}
}

class AddHabitView : UIView {
    
    let cancelButton : UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.titleLabel?.font = UIFont(name: "CalSans-SemiBold", size: 17)
        button.layer.cornerRadius = 16
        button.layer.borderWidth = 4
        button.layer.borderColor = CGColor(gray: 1, alpha: 0)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        [cancelButton].forEach {
            self.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        cancelButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.size.equalTo(32)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
