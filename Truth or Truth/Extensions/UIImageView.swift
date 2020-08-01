//
//  UIImageView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/15/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIImageView {
    // MARK: - UI Elements
    static func create(with image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }
    
    static func card(with image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
    }
}
