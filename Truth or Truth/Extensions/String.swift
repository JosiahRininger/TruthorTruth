//
//  String.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/26/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation

extension String {
    struct Literals {
        static let categories = [
            "Couples",
            "Friends",
            "Groups",
            "Strangers",
            "Favorites"
        ]
        static let categoryDescriptions = [
            "Play with your significan other",
            "Play with personal questions for 2 people who are friends.",
            "Play with questions ment for groups of 3 or more people",
            "Play with questions for 2 people who don't really know each other",
            "Play with your favorite questions"
        ]
    }

    struct IDs {
        static let categoryCellId = "categoryCellId"
    }
    
    struct DB {
        static let couples = "Couples"
        static let friends = "Friends"
        static let groups = "Groups"
        static let strangers = "Strangers"
        
        static let text = "text"
    }
}
