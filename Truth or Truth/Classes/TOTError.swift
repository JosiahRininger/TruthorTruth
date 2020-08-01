//
//  TOTError.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 8/1/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation
import os.log

enum Home: String {
    case unkown = "We're sorry. An unknown error as occured."
}

enum CardsDetail: String {
    case unkown = "We're sorry. An unknown error as occured."
}

enum TOTError: Error {
    case network
    case home(Home)
    case cardsDetail(CardsDetail)
    case reachabilityNotifier
    case firestore
    case unknown
    
    var message: String {
        switch self {
        case .network: return "Network Error"
        case .home(let message): return message.rawValue
        case .cardsDetail(let message): return message.rawValue
        case .reachabilityNotifier: return "Notifier Reachability Error"
        case .firestore: return "Firestore Error"
        case .unknown: return "Unknown Error"
        }
    }
    
    @discardableResult
    func log(_ moreInfo: String? = nil) -> Self {
        let errorString = moreInfo == nil
            ? "-Truth or Truth Error-"
            : "-API Error: \(moreInfo ?? "Unknown")-"
        
        os_log("Error: ",
               log: SystemLogger.shared.logger,
               type: .error,
               message,
               localizedDescription,
               errorString)
        
        return self
    }
}
