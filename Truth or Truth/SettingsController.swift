//
//  SettingsViewController.swift
//  Truth or Truth
//
//  Created by eli dangerfield on 8/3/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class SettingsController: TOTViewController {
    
    let settingsView = SettingsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        settingsView.settingsCollectionView.delegate = self
        settingsView.settingsCollectionView.dataSource = self
        
        setup(with: settingsView)
        setupNavigationItem()
    }
    
    func setupNavigationItem(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: .back, style:.plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        navigationItem.title = String.Settings.settings
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - UICollectionView Methods
extension SettingsController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SettingsItem.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String.IDs.settingsCellId, for: indexPath) as? SettingsCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: SettingsItem.allCases[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Settings Item")
    }
}

extension SettingsController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UICollectionView.settingsItemWidth, height: UICollectionView.settingsItemHeight)
    }
}
