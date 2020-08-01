//
//  UIStackView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/15/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIStackView {
    // MARK: - UI Elements
    static func create(axis: NSLayoutConstraint.Axis, layoutMargins: UIEdgeInsets = UIEdgeInsets(), spacing: CGFloat = 0) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = axis
        stackView.alignment = .center
        stackView.spacing = spacing
        stackView.distribution = .equalCentering
        stackView.layoutMargins = layoutMargins
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }
}
