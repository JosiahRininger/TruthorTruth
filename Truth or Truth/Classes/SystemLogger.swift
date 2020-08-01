//
//  SystemLogger.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/12/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import os.log

final class SystemLogger {
    static let shared = SystemLogger()
    
    var logger: OSLog = {
        return OSLog(subsystem: Bundle.main.bundleIdentifier!, category: String(describing: "SystemLogger"))
    }()
}
