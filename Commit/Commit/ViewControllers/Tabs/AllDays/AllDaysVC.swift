//
//  AllDaysViewController.swift
//  Commit
//
//  Created by Alikhan Tangirbergen on 06.04.2024.
//

import UIKit
import SnapKit

protocol IAllDaysVC {
    var navigateAllHabits : Callback? {get set}
    var navigateAddHabit : Callback? {get set }
}

final class AllDaysVC : UIViewController, IAllDaysVC {
    
    var navigateAllHabits: Callback?
    
    var navigateAddHabit: Callback?
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "all habits"
        label.font = UIFont(name: "CalSans-SemiBold", size: 42)
        label.textColor = .white
        return label
    }()
    
    let leftBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: AppImage.leftBar.systemImage, style: .plain, target: nil, action: nil)
        button.tintColor = .white
        return button
    }()
    
    let rightBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: AppImage.rightBar.systemImage, style: .plain, target: nil, action: nil)
        button.tintColor = .white
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBarButtons()
        setupConstraints()
    }
}

//MARK: Private methods

extension AllDaysVC {
    private func setupView() {
        view.backgroundColor = AppColor.background.uiColor
        [titleLabel].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupBarButtons() {
        tabBarController?.navigationItem.rightBarButtonItem = rightBarButton
        tabBarController?.navigationItem.leftBarButtonItem = leftBarButton
        rightBarButton.target = self
        leftBarButton.target = self
        rightBarButton.action = #selector(didTapRightBar)
        leftBarButton.action = #selector(didTapLeftBar)
    }
    
    @objc
    private func didTapLeftBar() {
        navigateAllHabits?()
    }
    
    @objc
    private func didTapRightBar() {
        navigateAddHabit?()
    }
    
    private func setupConstraints() {
        titleLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
        }
    }
}
