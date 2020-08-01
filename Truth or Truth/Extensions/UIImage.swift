//
//  UIImage.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIImage {
    private static let boldConfiguration = UIImage.SymbolConfiguration(weight: .bold)
    private static let semiBoldConfiguration = UIImage.SymbolConfiguration(weight: .semibold)
    
    static let categoryImages = [
        UIImage(named: "CatsFriends"),
        UIImage(named: "CatsFriends"),
        UIImage(named: "CatsGroups"),
        UIImage(named: "CatsStrangers"),
        UIImage(named: "CatsFavorites"),
    ]
    
    static let settings = UIImage(systemName: "gear", withConfiguration: boldConfiguration)
    static let back = UIImage(systemName: "chevron.left", withConfiguration: boldConfiguration)
    static let send = UIImage(systemName: "paperplane.fill", withConfiguration: semiBoldConfiguration)
    static let leftArrow = UIImage(systemName: "arrow.left", withConfiguration: semiBoldConfiguration)
    static let rightArrow = UIImage(systemName: "arrow.right", withConfiguration: semiBoldConfiguration)
}
