//
//  AppDelegate.swift
//  DLiver
//
//  Created by Anurag Ajwani on 12/09/2019.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        self.window?.rootViewController = viewController
        self.window?.makeKeyAndVisible()
        return true
    }
}
