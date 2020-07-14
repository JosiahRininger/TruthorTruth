//
//  HomeView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class HomeView: UIView {
    
    var cardCollectionView = UIElementsManager.createCardCollectionView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        frame = CGRect(x: 0, y: 0, width: UIElementsManager.windowWidth, height: UIElementsManager.windowHeight)
        backgroundColor = .background
        
        cardCollectionView.register(CategoryCell.self, forCellWithReuseIdentifier: String.IDs.categoryCellId)
        
        addSubviews(cardCollectionView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            cardCollectionView.topAnchor.constraint(equalTo: topAnchor),
            cardCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            cardCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
