//
//  AppDelegate.swift
//  Loc
//
//  Created by Wikipedia Brown on 8/29/18.
//  Copyright © 2018 IamGoodBad. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = HalfDuplexViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

