//
//  AppDelegate.swift
//  SampleApp
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.rootViewController = UINavigationController(rootViewController: LoginViewController2())
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

}
