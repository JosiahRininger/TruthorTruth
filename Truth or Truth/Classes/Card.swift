//
//  Card.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class Card: UIView {
    
    var height: CGFloat = 0
    var width: CGFloat = 0
    
    init(isSubCard: Bool = false) {
        super.init(frame: .zero)
        height = isSubCard ? UIElementsManager.subCardHeight : UIElementsManager.cardHeight
        width = isSubCard ? UIElementsManager.subCardWidth : UIElementsManager.cardWidth
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addShadowWith(radius: 4, offset: CGSize(width: 0, height: 2), opacity: 0.35)
        backgroundColor = .card
        layer.cornerRadius = 26
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
}
