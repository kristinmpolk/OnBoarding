//
//  AppDelegate.swift
//  OnBoarding
//
//  Created by Ingrid Polk on 5/31/16.
//  Copyright © 2016 KristinPolk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var authorizationNavigationController = UINavigationController()
    var loggedInNavigationController = UINavigationController()
    //will have 2 navigation controllers for logged in state and authorization state
    //need validated text field, logged in, authorisation folders

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let loggedInViewController = LoggedInViewController(nibName: "LoggedInViewController", bundle: nil)
        loggedInNavigationController = UINavigationController(rootViewController: loggedInViewController)
        
        let landingViewController = LandingViewController(nibName: "LandingViewController", bundle: nil)
        authorizationNavigationController = UINavigationController(rootViewController: landingViewController)
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = self.authorizationNavigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func navigateToLandingViewController(){
        let landingViewController = LandingViewController(nibName: "LandingViewController", bundle: nil)
        authorizationNavigationController = UINavigationController(rootViewController: landingViewController)
        self.window?.rootViewController = self.authorizationNavigationController
    }
    func navigateToLoggedInNavigationController() {
        self.window?.rootViewController = self.loggedInNavigationController
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

