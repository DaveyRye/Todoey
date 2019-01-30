//
//  AppDelegate.swift
//  Todoey
//
//  Created by Ryan Davey on 2019-01-29.
//  Copyright © 2019 Ryan Davey. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

   

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("App Done Loading")
        return true
    }
    
   

    func applicationWillResignActive(_ application: UIApplication) {
        // When user gets a phone call
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // WHen back or home button is pressed
        print ("Home Button Pressed")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Terminated - home button -> Diff app (resource intensive)
        print ("Terminated App")
    }


}

