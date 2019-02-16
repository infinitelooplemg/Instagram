//
//  AppDelegate.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = IGTabBarController()
        window?.makeKeyAndVisible()
        return true
    }

}

