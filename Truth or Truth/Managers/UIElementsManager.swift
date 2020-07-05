//
//  UIElementsManager.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

class UIElementsManager {
    
    static var windowWidth: CGFloat = UIScreen.main.bounds.width
    static var windowHeight: CGFloat = UIScreen.main.bounds.height

//    static var statusBarHeight: CGFloat = UIWindow().windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    
    static var cardWidth: CGFloat = UIScreen.main.bounds.width * 0.78
    static var cardHeight: CGFloat = UIScreen.main.bounds.height * 0.5
    static var subCardWidth: CGFloat = UIScreen.main.bounds.width * 0.715
    static var subCardHeight: CGFloat = UIScreen.main.bounds.height * 0.054
    
    static var collectionViewCellWidth: CGFloat = cardWidth + 15
    static var collectionViewCellHeight: CGFloat = cardHeight + subCardHeight + 15
//
    static var buttonWidth: CGFloat = 144
    static var buttonHeight: CGFloat = 61
//
//    static var textFieldHeight: CGFloat = 50\
//    static var circleViewHeightAndWidth: CGFloat = 22
//    static var settingsButtonHeightAndWidth: CGFloat = 30
//    static var iconHeightAndWidth: CGFloat = 40
//
    static var padding: CGFloat = 44
//    static var buttonPadding: CGFloat = 60
    
    static func createLabel(with title: String, fontSize: CGFloat, numberOfLines: Int = 1, color: UIColor = .mainText, textAlignment: NSTextAlignment = .natural, isHeader: Bool = false) -> UILabel {
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
    
//    static func createTextField(with placeholder: String) -> UITextField {
//        let t = UITextField()
//        t.backgroundColor = .secondaryBackgroundColor
//        t.textColor = .mainText
//        t.placeholder = placeholder
//        t.tintColor = .secondaryColor
//        t.leftView =  UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFieldHeight))
//        t.leftViewMode = .always
//        t.layer.borderWidth = 1
//        t.layer.cornerRadius = 9
//        t.layer.borderColor = UIColor.secondaryGray.cgColor
//        t.autocorrectionType = UITextAutocorrectionType.no
//        t.translatesAutoresizingMaskIntoConstraints = false
//        t.heightAnchor.constraint(equalToConstant: textFieldHeight).isActive = true
//
//        return t
//    }
    
//    static func createNumberTextField() -> UITextField {
//        let t = UITextField()
//        t.backgroundColor = .secondaryBackgroundColor
//        t.textColor = .mainText
//        t.textAlignment = .center
//        t.tintColor = .secondaryColor
//        t.keyboardType = .numberPad
//        t.layer.borderWidth = 1
//        t.layer.cornerRadius = 9
//        t.layer.borderColor = UIColor.secondaryGray.cgColor
//        t.autocorrectionType = UITextAutocorrectionType.no
//        t.translatesAutoresizingMaskIntoConstraints = false
//        t.heightAnchor.constraint(equalToConstant: textFieldHeight).isActive = true
//        t.widthAnchor.constraint(equalToConstant: numberTextFieldWidth).isActive = true
//
//        return t
//    }
    
    static func createButton(with title: String, color: UIColor = .card) -> UIButton {
        let button = UIButton()
        button.backgroundColor = color
        button.setTitleColor(color != .secondaryBackgroundColor ? .hexToColor(hexString: "#FCFCFC") : .mainText, for: .normal)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        return button
    }
    
    static func createImageView(with imageName: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
//    static func createSettingsButton() -> UIButton {
//        let button = UIButton()
//        button.setBackgroundImage(UIImage.settings, for: .normal)
//        button.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.heightAnchor.constraint(equalToConstant: settingsButtonHeightAndWidth).isActive = true
//        button.widthAnchor.constraint(equalToConstant: settingsButtonHeightAndWidth).isActive = true
//        
//        return button
//    }
    
    static func createView(isUserInteractionEnabled: Bool = false) -> UIView {
        let view = UIView()
        view.isUserInteractionEnabled = isUserInteractionEnabled
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
    
    
    static func createStackView(layoutMargins: UIEdgeInsets = UIEdgeInsets(), axis: NSLayoutConstraint.Axis = .vertical, spacing: CGFloat = 0) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = axis
        stackView.alignment = .leading
        stackView.spacing = spacing
        stackView.distribution = .fillEqually
        stackView.layoutMargins = layoutMargins
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }
    
    
    static func createCardCollectionView() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .vertical
        
//        let width = navigationTabBarItemWidth
//        let height = UIScreen.main.bounds.height / 10
//        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 4, height: navigationTabBarItemHeight)
//        layout.minimumInteritemSpacing =
//        layout.minimumLineSpacing = 14
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .background
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }
}
