//
//  AppDelegate.swift
//  AulaFib
//
//  Created by fibbauru-14 on 23/02/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func prepareForTabBar(viewController: UIViewController, title: String, icon : String) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: icon)
        
        if let navigation = viewController as? UINavigationController {
            navigation.navigationBar.isTranslucent = false;
        }
        
        return viewController
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //let rootViewController = ViewController()
        //let rootViewController = UINavigationController(rootViewController: FirstViewController())
        
        let rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = false
        
        let navC1 = UINavigationController(rootViewController : FirstViewController())
        //navC1.navigationBar.isTranslucent = false
        //navC1.tabBarItem.title = "First"
        //navC1.tabBarItem.image = UIImage(named:"icon1")
        
        let navC2 = UINavigationController(rootViewController : SecondViewController())
        //navC2.navigationBar.isTranslucent = false
        //navC2.tabBarItem.title = "Second"
        //navC2.tabBarItem.image = UIImage(named:"icon2")
        
        let navC3 = UINavigationController(rootViewController : ViewController())
        //navC3.navigationBar.isTranslucent = false
        
        //rootViewController.viewControllers = [navC1, navC2]
        
        rootViewController.viewControllers = [prepareForTabBar(viewController: navC1, title: "First", icon: "icon1"),
                                              prepareForTabBar(viewController: navC2, title: "Second", icon: "icon2"),
                                              prepareForTabBar(viewController: navC3, title: "Third", icon: "icon3"),
                                              prepareForTabBar(viewController: ViewController(), title: "Fourth", icon: "icon4"),
                                              prepareForTabBar(viewController: ViewController(), title: "Five", icon: "Icon5"),
                                              prepareForTabBar(viewController: ViewController(), title: "Six", icon: "Icon1")]
        rootViewController.selectedIndex = 1
        
            //FirstViewController()
        window = UIWindow(frame: CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size))
        window?.addSubview(rootViewController.view)
        window?.rootViewController = rootViewController;
        window?.makeKeyAndVisible();
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS w
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

