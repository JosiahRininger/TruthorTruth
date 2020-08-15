//
//  String.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation

extension String {
    // MARK: - UI Elements
    struct Literals {
        static let categories = [
            "Couples".localize(),
            "Friends".localize(),
            "Groups".localize(),
            "Strangers".localize(),
            "Favorites".localize()
        ]
        
        static let categoryDescriptions = [
            "Play with your\nsignificant other".localize(),
            "Play with personal\nquestions for 2 people\nwho are friends.".localize(),
            "Play with questions\nmeant for groups\nof 3 or more people".localize(),
            "Play with questions\nfor two people who don't\nreally know each other".localize(),
            "Play with your\nfavorite questions".localize()
        ]
    }
    
    struct Settings {
        static let about = "About".localize()
        static let settings = "Settings".localize()
        static let report = "Report a bug".localize()
    }
    
    struct IDs {
        static let categoryCellId = "categoryCellId"
        static let settingsCellId = "settingsCellId"
    }
    
    struct DB {
        static let couples = "Couples"
        static let friends = "Friends"
        static let groups = "Groups"
        static let strangers = "Strangers"
        static let text = "text"
    }
    
    // MARK: - Helper Method
    func localize(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func styled( with attrs: [NSAttributedString.Key: Any] ) -> NSAttributedString {
         return NSAttributedString(string: self, attributes: attrs)
     }
}
