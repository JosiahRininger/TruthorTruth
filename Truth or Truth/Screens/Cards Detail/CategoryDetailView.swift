//
//  CategoryDetailView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/11/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import Koloda

final class CategoryDetailView: UIView {
    
    let kolodaOffsetConstant = -(UIElementsManager.windowHeight - UIElementsManager.cardHeight) / 6
    let favoriteOffsetConstant = (UIElementsManager.windowHeight - UIElementsManager.cardHeight) / 4
    
    let kolodaView = UIElementsManager.createKolodaView()
    let favoriteButton = UIElementsManager.createFavoriteButton()

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

        addSubviews(favoriteButton, kolodaView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            kolodaView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: kolodaOffsetConstant),
            kolodaView.centerXAnchor.constraint(equalTo: centerXAnchor),
            kolodaView.heightAnchor.constraint(equalToConstant: UIElementsManager.cardHeight),
            kolodaView.widthAnchor.constraint(equalToConstant: UIElementsManager.cardWidth),
            
            favoriteButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            favoriteButton.centerYAnchor.constraint(equalTo: kolodaView.bottomAnchor, constant: favoriteOffsetConstant)
        ])
    }
}
