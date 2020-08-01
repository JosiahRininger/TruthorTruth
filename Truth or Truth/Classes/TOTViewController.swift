//
//  TOTViewController.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/12/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

class TOTViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return traitCollection.userInterfaceStyle == .dark ? .lightContent : .darkContent
    }
    
    internal func setup(with view: UIView) {
        self.view = view
    }
}
