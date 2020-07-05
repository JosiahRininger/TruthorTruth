//
//  CategoryCell.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    let card = Card()
    let subCard = Card(isSubCard: true)
    
    let titleLabel = UIElementsManager.createLabel(with: "Friends", fontSize: 30, textAlignment: .center)
    let subTitleLabel = UIElementsManager.createLabel(with: "Play these cards if you’re playing with peeps you already know", fontSize: 24, numberOfLines: 3, textAlignment: .center)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        isUserInteractionEnabled = true
        backgroundColor = .background
        layer.cornerRadius = 9
        
        addSubviews(subCard, card, titleLabel, subTitleLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: centerXAnchor),
            card.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            subCard.centerXAnchor.constraint(equalTo: card.centerXAnchor),
            subCard.centerYAnchor.constraint(equalTo: card.bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: card.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: card.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            
            subTitleLabel.topAnchor.constraint(equalTo: card.centerYAnchor),
            subTitleLabel.bottomAnchor.constraint(equalTo: card.bottomAnchor),
            subTitleLabel.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            subTitleLabel.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            ])
    }
    
    func configure(title: String, subTitle: String) {
        titleLabel.text = title
        subTitleLabel.text = subTitle
    }
    
}

