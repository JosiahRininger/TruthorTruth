//
//  UILabel.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/15/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UILabel {
    // MARK: - UI Elements
    static var widthConstant = Card.widthConstant - 40
    
    static func create(with title: String = "", fontSize: CGFloat, numberOfLines: Int = 1, color: UIColor = .label, textAlignment: NSTextAlignment = .natural, isBold: Bool = false) -> UILabel {
        let label = UILabel()
        label.text = title
        label.textColor = color
        label.textAlignment = textAlignment
        label.font = isBold ? .boldSystemFont(ofSize: fontSize) : .systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }
}
