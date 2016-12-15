//
//  AppDelegate.m
//  BotfolioChatExampleObjC
//
//  Created by Aleks Mutlu on 13/12/2016.
//  Copyright © 2016 Lena Software. All rights reserved.
//

#import "AppDelegate.h"
#import <BotfolioChat/BotfolioChat.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [BotfolioChat configureWithBotApiToken:@"YOUR_BOT_API_TOKEN"];
    
    /* You can optionally set extra parameters
     
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
    parameters[@"name"] = @"NAME";
    parameters[@"surname"] = @"SURNAME";
    
    [BotfolioChat configureWithBotApiToken:@"YOUR_BOT_API_TOKEN" firstName:@"FIRSTNAME" lastName:@"LASTNAME" externalJsonData:parameters domain:@"https://developers.botfol.io"];
    
    */

    /* Customize the UI
     
    [BotfolioChat setMainTintColor:[UIColor redColor]];
    [BotfolioChat setBotMessageTextColor:[UIColor yellowColor]];
    [BotfolioChat setBotMessageBackgroundColor:[UIColor blueColor]];
    [BotfolioChat setUserMessageTextColor:[UIColor whiteColor]];
    [BotfolioChat setUserMessageBackgroundColor:[UIColor purpleColor]];
    
    [BotfolioChat setPlaceholderImageName:@"botfolio"];
    
    [BotfolioChat setFontRegularName:@"Lato-Regular"]; // Don't forget to update the 'Info.plist' file
    [BotfolioChat setFontSemiBoldName:@"Lato-Semibold"];
    [BotfolioChat setFontBoldName:@"Lato-Bold"];

    */
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
