//
//  Reachability.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 8/1/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Reachability

extension Reachability {
    var isConnectedToNetwork: Result<Void, TOTError> {
        switch connection {
        case .wifi, .cellular: return Result.success(())
        case .unavailable, .none: return Result.failure(.network)
        }
    }
    
    func listenForNetworkChanges() {
        do {
            try startNotifier()
        } catch {
            TOTError.reachabilityNotifier.log()
        }
    }
}

