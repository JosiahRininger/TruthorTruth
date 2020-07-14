//
//  UIImage.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIImage {
    static let categoryImages = [
        UIImage(named: "CatsFriends"),
        UIImage(named: "CatsFriends"),
        UIImage(named: "CatsGroups"),
        UIImage(named: "CatsStrangers"),
        UIImage(named: "CatsFavorites"),
    ]
    static let back = UIImage(systemName: "chevron.left", withConfiguration: UIImage.SymbolConfiguration(weight: .semibold))
    static let send = UIImage(systemName: "paperplane.fill", withConfiguration: UIImage.SymbolConfiguration(weight: .semibold))
}
