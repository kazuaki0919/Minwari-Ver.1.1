//
//  AppDelegate.swift
//  Minwari
//
//  Created by 並木一晃 on 2015/12/29.
//  Copyright © 2015年 並木一晃. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UITextFieldDelegate {
    
    var window: UIWindow?
    
    func grabStoryboard() -> UIStoryboard {
        var storyboard = UIStoryboard()
        let height = UIScreen.mainScreen().bounds.size.height
        
        if height == 667 {
            storyboard = UIStoryboard(name: "4.7inch", bundle: nil)
        }else if height == 736 {
            storyboard = UIStoryboard(name: "5.5inch", bundle: nil)
        }else if height == 1024 {
            storyboard = UIStoryboard(name: "iPad", bundle: nil)
        } else {
            storyboard = UIStoryboard(name: "4inch", bundle: nil)
        }
        return storyboard
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard: UIStoryboard = self.grabStoryboard()
            if let window = window {
            window.rootViewController = storyboard.instantiateInitialViewController() as UIViewController!
        }
        
        self.window?.makeKeyAndVisible()
        
        return true
    }


    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

