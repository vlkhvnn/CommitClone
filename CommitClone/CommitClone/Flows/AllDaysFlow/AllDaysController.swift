//
//  AllDaysController.swift
//  CommitClone
//
//  Created by Alikhan Tangirbergen on 21.04.2024.
//

import UIKit
import SnapKit

final class AllDaysController : GenericVC<AllDaysView>, AllDaysViewProtocol {
    
    var onAllHabits: Callback?
    var onAddHabit: Callback?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        rootView.habitsCollectionView.dataSource = self
        rootView.habitsCollectionView.delegate = self
        setupBarButtons()
    }
    
    private func setupBarButtons() {
        self.navigationItem.leftBarButtonItem = rootView.leftBarButton
        self.navigationItem.rightBarButtonItem = rootView.rightBarButton
    }
}

extension AllDaysController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = rootView.habitsCollectionView.dequeueReusableCell(withReuseIdentifier: HabitsCollectionViewCell.identifier, for: indexPath)
        return cell
    }
}
