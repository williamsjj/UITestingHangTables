//
//  AppDelegate.swift
//  UITestingHangTables
//
//  Created by Jason Williams on 10/20/16.
//  Copyright © 2016 DigiTar, Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        if self.window == nil {
            self.window = UIWindow(frame: UIScreen.main.bounds);
            self.window?.backgroundColor = UIColor.white;
            
            let parentController = MyTableViewController();
            self.window?.addSubview(parentController.view);
            self.window?.rootViewController = parentController;
        }
        
        return true;
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window?.makeKeyAndVisible();
        
        return true
    }



}

