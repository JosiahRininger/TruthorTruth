//
//  UICollectionView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/15/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UICollectionView {
    // MARK: - UI Elements
    static var cellHeight = UIScreen.main.bounds.height * 0.554 + 15
    static var cellWidth = UIScreen.main.bounds.width * 0.78
    
    static func card() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .background
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }
}
