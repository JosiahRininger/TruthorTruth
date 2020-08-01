//
//  AppDelegate.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 6/21/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    private let networkErrorPopUp = NetworkErrorView()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = TOTNavigationController(rootViewController: HomeController())
        window?.overrideUserInterfaceStyle = .light
        window?.addSubview(networkErrorPopUp)
        
        ErrorManager.setPopUp(networkErrorPopUp)
        
        setupGoogleServices()
        
        return true
    }
    
    private func setupGoogleServices() {
        FirebaseApp.configure()
        FirestoreService.listenForNetworkChanges()
    }
}
