//
//  SettingsCell.swift
//  Truth or Truth
//
//  Created by eli dangerfield on 8/3/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class SettingsCell: UICollectionViewCell {
    
    var imageView = UIImageView.create(with: UIImage())
    let titleLabel = UILabel.create(fontSize: 22, numberOfLines: 1, textAlignment: .center, isBold: true)
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubviews(imageView, titleLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: leftAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 40),
            
            titleLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: imageView.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor)
        ])
    }
    
    func configure(with settingsItem: SettingsItem) {
        titleLabel.text = settingsItem.getTitle()
        imageView.image = settingsItem.getIcon()
    }
}

