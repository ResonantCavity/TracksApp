//
//  AppDelegate.swift
//  TracksApp
//

import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // Set true to use UIKit entry point
    let useUIKit = false

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootViewController = useUIKit ? TracksViewController() : UIHostingController(rootView: TracksView())
        
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()

        return true
    }
}
