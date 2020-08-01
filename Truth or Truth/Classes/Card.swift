//
//  Card.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class Card: UIView {
    
    static var widthConstant = UIScreen.main.bounds.width * 0.78
    static var heightConstant = UIScreen.main.bounds.height * 0.5
    var cardHeightAnchor = NSLayoutConstraint()
    var cardWidthAnchor = NSLayoutConstraint()
    
    var isHighlighted: Bool = false {
        didSet {
            let constant: CGFloat = isHighlighted ? 15 : -15
            cardHeightAnchor.constant += Card.heightConstant / constant
            cardWidthAnchor.constant += Card.widthConstant / constant
        }
    }
    
    init() {
        super.init(frame: .zero)
        cardHeightAnchor = heightAnchor.constraint(equalToConstant: Card.heightConstant)
        cardWidthAnchor = widthAnchor.constraint(equalToConstant: Card.widthConstant)
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
        cardHeightAnchor.isActive = true
        cardWidthAnchor.isActive = true
    }
}

// MARK: - Koloda Methods
extension Card {
    static func koloda(with text: String) -> Card {
        let card = Card()
         let label = UILabel.create(with: text, fontSize: 24)
         card.addSubview(label)
        
         NSLayoutConstraint.activate([
             label.topAnchor.constraint(equalTo: card.topAnchor),
             label.bottomAnchor.constraint(equalTo: card.bottomAnchor),
             label.centerXAnchor.constraint(equalTo: card.centerXAnchor),
             label.widthAnchor.constraint(equalToConstant: UILabel.widthConstant),
         ])
        
        return card
    }
}
