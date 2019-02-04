//
//  AppDelegate.swift
//  Quizzes
//
//  Created by Alex Paul on 1/31/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UITabBarControllerDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let VC = QuizViewController()
    
    let navigation = UINavigationController.init(rootViewController: VC)
    
    let tabBar = UITabBarController()
    let cv = QuizViewController()
    
    let searcCV = SearchViewController()
    let vc = CreateViewController()
    let vcNav = UINavigationController.init(rootViewController: vc)
    let pvc = ProfileViewController()
    navigation.title = "Quiz"
    searcCV.title = "Search"
    vc.title = "Create"
    pvc.title = "Profile"
    navigation.tabBarItem = UITabBarItem(title: "Quiz", image: UIImage(named: "quiz-icon"), tag: 0)
    searcCV.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "search"), tag: 1)
    vc.tabBarItem = UITabBarItem(title: "Create", image: UIImage(named: "create-icon"), tag: 2)
    pvc.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile-unfilled"), tag: 3)
    tabBar.viewControllers = [navigation, searcCV, vcNav, pvc]
    
    window = UIWindow.init(frame: UIScreen.main.bounds)
    window?.rootViewController = tabBar
    window?.makeKeyAndVisible()
    return true
  }
    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        if viewController is CreateViewController {
//            if let newVC = tabBarController.storyboard?.instantiateViewController(withIdentifier: "YourVCStoryboardIdentifier") {
//                tabBarController.present(newVC, animated: true)
//                return false
//            }
//        }
//
//        return true
//    }
  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
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

