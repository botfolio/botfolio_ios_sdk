## Requirements

- iOS 9.0+
- Swift 2.3

## Installation

### CocoaPods

Note: If you are developing an ObjC app, use the master branch instead
```ruby
pod 'BotfolioChat', :git => 'https://github.com/botfolio/botfolio_ios_sdk.git', :branch => 'swift23'
```

## [Must do] Usage Descriptions 

BotfolioChat SDK uses the camera, photo library, location services, microphone and contacts.

If your app does not already request permissions for these features, you should update your info.plist file with a usage description for NSCameraUsageDescription, NSPhotoLibraryUsageDescription, NSLocationWhenInUseusageDescription, NSMicrophoneUsageDescription and NSContactsUsageDescription.

Also add following description to show image and generic type messages successfully.
```
"App Transport Security Settings" -> "Allow Arbitrary Loads" = YES 
```

## Configuration

In AppDelegate.swift file, import BotfolioChat 

```swift
import BotfolioChat
```

Make sure to make the necessary configuration while app starts. 

Example:
```swift
func applicationDidFinishLaunching(application: UIApplication) {
    BotfolioChat.configure(“YOUR_BOTFOLIO_API_TOKEN”)
}
```
You can optionally set extra parameters in the configuration section. 

```swift
func configure(botApiToken: String, firstName: String? = nil, lastName: String? = nil, 
externalJsonData: [String: AnyObject]? = nil, domain: String = "https://developers.botfol.io")
```
## Localization

If your project does not yet have a Localizable.strings file with different language variants, create it now.

Add necessary keys by following the link. 
https://github.com/botfolio/botfolio_ios_sdk/blob/master/strings.md

## Customization

Make sure to do all your customizations in ```didFinishLaunchingWithOptions```.

### Fonts

Example:
```swift
BotfolioChat.fontRegularName = "Lato-Regular"
BotfolioChat.fontBoldName = "Lato-Bold"
BotfolioChat.fontSemiBoldName = "Lato-SemiBold"
```
If you are using custom fonts, don't forget to add "Fonts provided by application" key to info.plist file.

### Colors

You can also change the colors of UI Elements.

Example:
```swift
BotfolioChat.botMessageBackgroundColor = UIColor.yellowColor()
BotfolioChat.botMessageTextColor = UIColor.purpleColor()
BotfolioChat.userMessageBackgroundColor = UIColor.blueColor()
BotfolioChat.userMessageTextColor = UIColor.blackColor()
BotfolioChat.mainTintColor = UIColor.redColor()
```

### Placeholder

You can also change the default placeholder image.

Example:
```swift
BotfolioChat.placeholderImageName = "YOUR_IMAGE_HERE"
```

## Unread Count

If you want to show recent unread message count in your app, just call ```BotfolioChat.getUnreadCount(completion: (count: Int) -> Void)```.

Example:
```swift
BotfolioChat.getUnreadCount { (count) in
    print("Unread count: \(count)")
}
```

## NSNotfications

You can also be notified when a message triggered between bots and users.

Example: 
```swift
...

NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(newMessage(_:)), name: NSNotificationName.Botfolio.NewMessage, object: nil)

...

func newMessage(notification: NSNotification) {
    let message = notification.userInfo!["message"] as! Message

    print(message.messageType)
}

```

If you are developing an ObjC app

```objc
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(newMessage:)
    name: [BotfolioChat botfolioChatNewMessageNotification] object:nil];
```
