//
//  UIView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
    
    func addShadowWith(radius: CGFloat, offset: CGSize, opacity: Float) {
        self.layer.shadowRadius = radius
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
    }
}
