//
//  SettingsViewController.swift
//  Truth or Truth
//
//  Created by eli dangerfield on 8/3/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class SettingsController: TOTViewController {
    
    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.cardCollectionView.delegate = self
        homeView.cardCollectionView.dataSource = self
        
        setup(with: homeView)
        setupNavigationItem()
    }
    
    func setupNavigationItem(){
        navigationItem.title = "AppName".localize()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "gear"), style: .plain, target: self, action: #selector(self.navigateToSettings))
    }
    
    @objc
    func navigateToSettings() {
        navigationController?.pushViewController(CategoryDetailController(questionsType: .Couples), animated: true)
    }
}

// MARK: - UICollectionView Methods
extension SettingsController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return String.Literals.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String.IDs.categoryCellId, for: indexPath) as? CategoryCell else {
            return UICollectionViewCell()
        }
        cell.configure(
            title: String.Literals.categories[indexPath.row],
            subTitle: String.Literals.categoryDescriptions[indexPath.row],
            image: UIImage.categoryImages[indexPath.row] ?? UIImage()
        )
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.cellForItem(at: indexPath)?.isHighlighted = true
        guard let questionsType = QuestionsType.init(rawValue: String.Literals.categories[indexPath.row]) else {
            return
        }
        navigationController?.pushViewController(CategoryDetailController(questionsType: questionsType), animated: true)
        collectionView.cellForItem(at: indexPath)?.isHighlighted = false
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        collectionView.cellForItem(at: indexPath)?.isHighlighted = false
    }
}

extension HomeController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UICollectionView.cellWidth, height: UICollectionView.cellHeight)
    }
}
