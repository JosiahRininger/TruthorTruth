//
//  SettingsView.swift
//  Truth or Truth
//
//  Created by eli dangerfield on 8/3/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class SettingsView: UIView {
    
    var settingsCollectionView = UICollectionView.basic()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        backgroundColor = .background
        
        settingsCollectionView.register(SettingsCell.self, forCellWithReuseIdentifier: String.IDs.settingsCellId)
        
        addSubviews(settingsCollectionView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            settingsCollectionView.topAnchor.constraint(equalTo: topAnchor),
            settingsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            settingsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            settingsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
