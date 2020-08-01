//
//  CategoryCell.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

final class CategoryCell: UICollectionViewCell {
    
    let card = Card()
    var imageView = UIImageView.create(with: UIImage())
    let titleLabel = UILabel.create(fontSize: 30, numberOfLines: 1, textAlignment: .center, isBold: true)
    let subtitleLabel = UILabel.create(fontSize: 24, numberOfLines: 3, textAlignment: .center)
    
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.35) {
                let transform = self.isHighlighted ? CGAffineTransform(scaleX: 1.08, y: 1.08) : CGAffineTransform.identity
                self.card.transform = transform
                self.imageView.transform = transform
                self.titleLabel.transform = transform
                self.subtitleLabel.transform = transform
                self.layoutIfNeeded()
            }
        }
    }
    
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

        addSubviews(card, imageView, titleLabel, subtitleLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: centerXAnchor),
            card.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            imageView.topAnchor.constraint(equalTo: card.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: card.centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            
            titleLabel.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: card.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            titleLabel.widthAnchor.constraint(equalToConstant: UILabel.widthConstant),
            
            subtitleLabel.centerXAnchor.constraint(equalTo: card.centerXAnchor),
            subtitleLabel.topAnchor.constraint(equalTo: card.centerYAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: card.bottomAnchor),
            subtitleLabel.widthAnchor.constraint(equalToConstant: UILabel.widthConstant)
        ])
    }
    
    func configure(title: String, subTitle: String, image: UIImage) {
        titleLabel.text = title
        subtitleLabel.text = subTitle
        imageView.image = image
    }
    
}

