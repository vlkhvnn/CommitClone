// AllDaysView.swift
// CommitClone
// Created by Alikhan Tangirbergen on 21.04.2024.

import UIKit
import SnapKit

protocol AllDaysViewProtocol: BaseView, UIViewController {
    var onAllHabits: Callback? { get set }
    var onAddHabit: Callback? { get set }
}

class AllDaysView: UIView {
    let leftBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: AppImage.leftBarButton.systemImage, style: .plain, target: nil, action: nil)
        button.tintColor = .white
        return button
    }()
    
    let rightBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: AppImage.rightBarButton.systemImage, style: .plain, target: nil, action: nil)
        button.tintColor = .white
        return button
    }()
    
    let header: UILabel = {
        let label = UILabel()
        label.text = "all habits"
        label.font = UIFont(name: "CalSans-SemiBold", size: 42)
        label.textColor = .white
        return label
    }()
    
    let habitsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let newCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        newCollectionView.backgroundColor = AppColor.background.uiColor
        newCollectionView.showsVerticalScrollIndicator = false
        return newCollectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupCollectionView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        [header, habitsCollectionView].forEach {
            addSubview($0)
        }
        backgroundColor = AppColor.background.uiColor
    }
    
    private func setupCollectionView() {
        habitsCollectionView.register(HabitsCollectionViewCell.self, forCellWithReuseIdentifier: HabitsCollectionViewCell.identifier)
        habitsCollectionView.alwaysBounceVertical = true
        habitsCollectionView.bounces = true
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 40, height: 40)
        habitsCollectionView.collectionViewLayout = layout
    }
    
    private func setupConstraints() {
        header.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
        }
        
        habitsCollectionView.snp.makeConstraints {
            $0.top.equalTo(header.snp.bottom).offset(16)
            $0.left.right.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview()
        }
    }
}
