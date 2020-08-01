//
//  UIButton.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/15/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIButton {
    // MARK: - UI Elements
    static func settings() -> UIButton {
        let button = UIButton()
        button.setBackgroundImage(UIImage(), for: .normal)
        button.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }
    
    static func favorite() -> UIButton {
        let button = UIButton()
        button.addShadowWith(radius: 3, offset: CGSize(width: 0, height: 3), opacity: 0.16)
        button.backgroundColor = .card
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        return button
    }
    
    static func arrow(with image: UIImage) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.tintColor = .imageTint
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        return button
    }
    
    static func popUpButtons() -> UIButton {
        let b = UIButton()
        b.backgroundColor = .card
        b.setTitleColor(.darkText, for: .normal)
        b.setTitle("", for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 20)
        b.layer.cornerRadius = 30
        b.addShadowWith(radius: 4, offset: CGSize(width: 0, height: 4), opacity: 0.16)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.heightAnchor.constraint(equalToConstant: 61).isActive = true
        
        return b
    }
}
