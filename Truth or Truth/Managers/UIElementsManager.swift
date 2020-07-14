//
//  UIElementsManager.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import Koloda

struct UIElementsManager {
    
    static var windowWidth: CGFloat = UIScreen.main.bounds.width
    static var windowHeight: CGFloat = UIScreen.main.bounds.height

//    static var statusBarHeight: CGFloat = UIWindow().windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    
    static var cardWidth: CGFloat = UIScreen.main.bounds.width * 0.78
    static var cardHeight: CGFloat = UIScreen.main.bounds.height * 0.5
    static var subCardWidth: CGFloat = UIScreen.main.bounds.width * 0.715
    static var subCardHeight: CGFloat = UIScreen.main.bounds.height * 0.054
    
    static var collectionViewCellWidth: CGFloat = cardWidth + 15
    static var collectionViewCellHeight: CGFloat = cardHeight + subCardHeight + 15

    static var buttonWidth: CGFloat = 144
    static var buttonHeight: CGFloat = 61

    static var circleViewHeightAndWidth: CGFloat = 50
//    static var settingsButtonHeightAndWidth: CGFloat = 30
    static var padding: CGFloat = 44
    
    static func createLabel(with title: String, fontSize: CGFloat, numberOfLines: Int = 1, color: UIColor = .label, textAlignment: NSTextAlignment = .natural, isHeader: Bool = false) -> UILabel {
        let label = UILabel()
        label.text = title
        label.textColor = color
        label.textAlignment = textAlignment
        label.font = isHeader ? .boldSystemFont(ofSize: fontSize) : .systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }
    
    static func createButton(with title: String, color: UIColor = .card) -> UIButton {
        let button = UIButton()
        button.backgroundColor = color
//        button.setTitleColor(color != .secondaryBackgroundColor ? .hexToColor(hexString: "#FCFCFC") : .mainText, for: .normal)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        return button
    }
    
    static func createFavoriteButton() -> UIButton {
        let button = UIButton()
        button.addShadowWith(radius: 3, offset: CGSize(width: 0, height: 3), opacity: 0.16)
        button.backgroundColor = .card
        button.layer.cornerRadius = circleViewHeightAndWidth / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: circleViewHeightAndWidth).isActive = true
        button.widthAnchor.constraint(equalToConstant: circleViewHeightAndWidth).isActive = true
        
        return button
    }
    
    static func createView(isUserInteractionEnabled: Bool = false) -> UIView {
        let view = UIView()
        view.isUserInteractionEnabled = isUserInteractionEnabled
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
    
    static func createView(with string: String) -> UIView {
        let view = UIView()
        let label = UIElementsManager.createLabel(with: string, fontSize: 24)
        
        view.backgroundColor = .card
        view.addSubview(label)
        view.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: UIElementsManager.cardHeight),
            view.widthAnchor.constraint(equalToConstant: UIElementsManager.cardWidth),
            
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        return view
    }
    
    static func createImageView(with image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
    static func createCardImageView(with image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    static func createSettingsButton() -> UIButton {
        let button = UIButton()
//        button.setBackgroundImage(UIImage.settings, for: .normal)
        button.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.heightAnchor.constraint(equalToConstant: settingsButtonHeightAndWidth).isActive = true
//        button.widthAnchor.constraint(equalToConstant: settingsButtonHeightAndWidth).isActive = true
        
        return button
    }

    
    static func createOverlayView() -> OverlayView {
        let overlayView = OverlayView()
        overlayView.backgroundColor = .card
        overlayView.translatesAutoresizingMaskIntoConstraints = false
        
        return overlayView
    }
    
    
    static func createCardCollectionView() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .background
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }
    
    static func createKolodaView() -> KolodaView {
        let kolodaView = KolodaView()
        kolodaView.translatesAutoresizingMaskIntoConstraints = false
        
        return kolodaView
    }
    
    static func createKolodaCard(with text: String) -> Card {
        let card = Card()
         let label = UIElementsManager.createLabel(with: text, fontSize: 24)
         card.addSubview(label)
        
         NSLayoutConstraint.activate([
             label.topAnchor.constraint(equalTo: card.topAnchor),
             label.bottomAnchor.constraint(equalTo: card.bottomAnchor),
             label.leadingAnchor.constraint(equalTo: card.leadingAnchor),
             label.trailingAnchor.constraint(equalTo: card.trailingAnchor),
         ])
        
        return card
    }
}
