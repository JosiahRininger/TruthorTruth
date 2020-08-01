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
    
    let kolodaOffsetConstant = -(UIScreen.main.bounds.height - Card.heightConstant) / 6
    let favoriteOffsetConstant = (UIScreen.main.bounds.height - Card.heightConstant) / 4
    
    let kolodaView = KolodaView()
    let stackView = UIStackView.create(axis: .horizontal)
    let leftArrowButton = UIButton.arrow(with: UIImage.leftArrow ?? UIImage())
    let favoriteButton = UIButton.favorite()
    let rightArrowButton = UIButton.arrow(with: .rightArrow ?? UIImage())

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

        kolodaView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubviews(stackView, kolodaView)
        stackView.addArrangedSubview(leftArrowButton)
        stackView.addArrangedSubview(favoriteButton)
        stackView.addArrangedSubview(rightArrowButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            kolodaView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: kolodaOffsetConstant),
            kolodaView.centerXAnchor.constraint(equalTo: centerXAnchor),
            kolodaView.heightAnchor.constraint(equalToConstant: Card.heightConstant),
            kolodaView.widthAnchor.constraint(equalToConstant: Card.widthConstant),
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: kolodaView.bottomAnchor, constant: favoriteOffsetConstant),
            stackView.heightAnchor.constraint(equalTo: favoriteButton.heightAnchor),
            stackView.widthAnchor.constraint(equalTo: kolodaView.widthAnchor)
        ])
    }
}
