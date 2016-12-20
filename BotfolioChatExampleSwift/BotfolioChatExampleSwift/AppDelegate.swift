//
//  AppDelegate.swift
//  BotfolioChatExampleSwift
//
//  Created by Aleks Mutlu on 15/12/2016.
//  Copyright © 2016 Lena Software. All rights reserved.
//

import UIKit
import BotfolioChat

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        BotfolioChat.configure(botApiToken: "YOUR_BOT_API_TOKEN")

        /* You can optionally set extra parameters
         
        var externalJsonData: [String: Any]!
        externalJsonData = ["age": 25, "gender": "male"]
        
        BotfolioChat.configure(botApiToken: "YOUT_BOT_API_TOKEN", firstName: "FIRSTNAME", lastName: "LASTNAME", externalJsonData: externalJsonData as [String: AnyObject], domain: "https://developers.botfol.io")
        */
 
        /* Customize the UI
         
        BotfolioChat.mainTintColor = .red
        BotfolioChat.botMessageTextColor = .yellow
        BotfolioChat.botMessageBackgroundColor = .blue
        BotfolioChat.userMessageTextColor = .white
        BotfolioChat.userMessageBackgroundColor = .purple
        
        BotfolioChat.placeholderImageName = "botfolio"
        
        BotfolioChat.fontRegularName = "Lato-Regular"
        BotfolioChat.fontSemiBoldName = "Lato-Semibold"
        BotfolioChat.fontBoldName = "Lato-Bold"
        */
        
        
        return true
    }

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

