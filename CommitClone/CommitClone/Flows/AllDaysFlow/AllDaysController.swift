import UIKit
import SnapKit

final class AllDaysController: GenericVC<AllDaysView>, AllDaysViewProtocol {
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
        rootView.leftBarButton.target = self
        rootView.leftBarButton.action = #selector(leftBarButtonTapped)
        
        rootView.rightBarButton.target = self
        rootView.rightBarButton.action = #selector(rightBarButtonTapped)
        
        navigationItem.leftBarButtonItem = rootView.leftBarButton
        navigationItem.rightBarButtonItem = rootView.rightBarButton
    }
    
    @objc private func leftBarButtonTapped() {
        // Handle left bar button tap
        print("Left bar button tapped")
    }
    
    @objc private func rightBarButtonTapped() {
        // Handle right bar button tap
        print("Right bar button tapped")
    }
}

extension AllDaysController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HabitsCollectionViewCell.identifier, for: indexPath)
        return cell
    }
}
