//
//  UIColor.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

extension UIColor {
    static func intFromHexString(hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = NSCharacterSet(charactersIn: "#") as CharacterSet
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
    
    static func hexToColor(hexString: String, alpha: CGFloat? = 1.0) -> UIColor {
        // Convert hex string to an integer
        let hexint = Int(UIColor.intFromHexString(hexStr: hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        let alpha = alpha!
        // Create color object, specifying alpha as well
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        return color
    }
    
    // Theme Colors Used
    static let background: UIColor = {
        return UIColor(named: "background") ?? .hexToColor(hexString: "#F4F4F4")
    }()
    
    static var card: UIColor = {
        return UIColor(named: "card") ?? .hexToColor(hexString: "#F4F4F4")
    }()
    
    static var cardHighlighted: UIColor = {
        return UIColor(named: "cardHighlighted") ?? .hexToColor(hexString: "#F4F4F4")
    }()
    
    static var imageTint: UIColor = {
        return UIColor(named: "imageTint") ?? .hexToColor(hexString: "#F4F4F4")
    }()
}
