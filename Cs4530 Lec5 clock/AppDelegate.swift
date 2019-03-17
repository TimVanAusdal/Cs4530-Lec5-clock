//
//  AppDelegate.swift
//  Cs4530 Lec5 clock
//
//  Created by u1034691 on 2/25/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        
        let ClockView: clockView = clockView()
        ClockView.frame = CGRect(x: 20.0, y: 20.0, width: 280.0, height: 400.0)
        ClockView.backgroundColor = UIColor.lightGray
        window?.rootViewController?.view.addSubview(ClockView)
        return true
    }

    


}

