//
//  TOTNavigationController.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/13/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

class TOTNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationBar.tintColor = .background
        navigationBar.barTintColor = .background
        navigationBar.shadowImage = UIImage()
        navigationBar.layer.masksToBounds = false
        navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        navigationBar.addShadowWith(radius: 2, offset: CGSize(width: 0, height: 2.0), opacity: 0.8)
        navigationBar.tintColor = .imageTint
    }
}
