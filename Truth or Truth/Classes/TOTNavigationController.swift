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
//        UINavigationBar.appearance().barTintColor = .black
//        UINavigationBar.appearance().tintColor = .white
//        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().isTranslucent = false
//        let navigationBar = UINavigationBar.appearance()
//        navigationBarAppearace.backItem?.title = nil
//        navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationBar.isTranslucent = true
//
//        let lineImage = UIImage.backArrow?.withTintColor(.imageTint)
//        let fancyImage = UIImage.backArrow?.withTintColor(.imageTint)
//        navigationBar.backItem?.backBarButtonItem?.setBackButtonBackgroundImage(lineImage, for: .normal, barMetrics: .compact)
//        let yourBackImage = UIImage.catArrow?.withTintColor(.imageTint)
//        navigationBar.backIndicatorImage = yourBackImage
//        navigationBar.backIndicatorTransitionMaskImage = yourBackImage
//        navigationBar.backItem?.title = "Custom"
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Custom", style: .plain, target: nil, action: nil)
//        let fancyAppearance = UINavigationBarAppearance()
//        fancyAppearance.configureWithDefaultBackground()
//        fancyAppearance.setBackIndicatorImage(fancyImage, transitionMaskImage: fancyImage)
//
//        let lineAppearance = UINavigationBarAppearance()
//        lineAppearance.configureWithDefaultBackground()
//        lineAppearance.setBackIndicatorImage(lineImage, transitionMaskImage: lineImage)

//        navigationBar.scrollEdgeAppearance = fancyAppearance
//        navigationBar.compactAppearance = lineAppearance
        
        navigationBar.tintColor = .imageTint
    }
}
