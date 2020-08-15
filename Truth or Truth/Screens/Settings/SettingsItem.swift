//
//  SettingsItem.swift
//  Truth or Truth
//
//  Created by eli dangerfield on 8/3/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation
import UIKit

enum SettingsItem: CaseIterable {
    case About
    case ReportABug
    
    func getIcon() -> UIImage? {
        switch self {
        case .About:
            return UIImage.about?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        case .ReportABug:
            return UIImage.report?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        }
    }
    
    func getTitle() -> String {
        switch self {
        case .About:
            return String.Settings.about
        case .ReportABug:
            return String.Settings.report
        }
    }
}
