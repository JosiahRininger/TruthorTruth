//
//  HomeController.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class HomeController: UIViewController {
    
    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.cardCollectionView.delegate = self
        homeView.cardCollectionView.dataSource = self
        
        setupView()
    }
    
    private func setupView() {
        view = homeView
    }


}

// MARK: - UICollectionView Methods
extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return String.Literals.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String.IDs.categoryCellId, for: indexPath) as? CategoryCell else {
            return UICollectionViewCell()
        }
        cell.configure(title: String.Literals.categories[indexPath.row],
                       subTitle: String.Literals.categoryDescriptions[indexPath.row])
        return cell
    }
}

extension HomeController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIElementsManager.collectionViewCellWidth, height: UIElementsManager.collectionViewCellHeight)
    }
}
