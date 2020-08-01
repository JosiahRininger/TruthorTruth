//
//  ErrorManager.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/31/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import PKHUD

class ErrorManager {
    private static var networkErrorPopUp: NetworkErrorView?
    private static var currentView: UIView?
    
    static func setPopUp(_ popUp: NetworkErrorView) {
        networkErrorPopUp = popUp
        networkErrorPopUp?.isHidden = true
    }
    
    static func showPopUp(for view: UIView) {
        currentView = view
        
        networkErrorPopUp?.popUp.doneButton.backgroundColor = .card
        currentView?.isUserInteractionEnabled = false
        networkErrorPopUp?.isHidden = false
        
        networkErrorPopUp?.popUp.doneButton.addTarget(self, action: #selector(hidePopUp), for: .touchUpInside)
    }
    
    static func showFlash(with message: String) {
        HUD.dimsBackground = false
        HUD.flash(.label(message), delay: 1.0)
    }
    
    @objc static func hidePopUp() {
        currentView?.isUserInteractionEnabled = true
        networkErrorPopUp?.isHidden = true
    }
}
