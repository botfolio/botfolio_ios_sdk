//
//  AppDelegate.swift
//  BotfolioChatExampleSwift23
//
//  Created by Aleks Mutlu on 15/12/2016.
//  Copyright © 2016 Lena Software. All rights reserved.
//

import UIKit
import BotfolioChat

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(application: UIApplication) {
        
        BotfolioChat.configure("YOUR_BOT_API_TOKEN")

        /* You can optionally set extra parameters
         
        var externalJsonData: [String: AnyObject]!
        externalJsonData = ["age": 25, "gender": "male"]
        
        BotfolioChat.configure("YOUR_BOT_API_TOKEN", firstName: "FIRSTNAME", lastName: "LASTNAME", externalJsonData: externalJsonData, domain: "https://developers.botfol.io")
         
        */
        
        /* Customize the UI
 
        BotfolioChat.mainTintColor = UIColor.redColor()
        BotfolioChat.botMessageBackgroundColor = UIColor.yellowColor()
        BotfolioChat.botMessageTextColor = UIColor.blueColor()
        BotfolioChat.userMessageBackgroundColor = UIColor.purpleColor()
        BotfolioChat.userMessageTextColor = UIColor.orangeColor()
        
        BotfolioChat.placeholderImageName = "botfolio"
        
        BotfolioChat.fontRegularName = "Lato-Regular"
        BotfolioChat.fontBoldName = "Lato-Bold"
        BotfolioChat.fontSemiBoldName = "Lato-SemiBold"
        */
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

