## Requirements

- iOS 9.0+
- Swift 3

## Installation

### CocoaPods

```ruby
pod 'BotfolioChat', :git => 'https://github.com/botfolio/botfolio_ios_sdk.git', :branch => 'master'
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
    BotfolioChat.configure(botApiToken: "YOUR_BOT_API_TOKEN")
}
```
You can optionally set extra parameters in the configuration section. 

```swift
var externalJsonData: [String: Any]!
externalJsonData = ["age": 25, "gender": "male"]

BotfolioChat.configure(botApiToken: "YOUT_BOT_API_TOKEN", firstName: "FIRSTNAME", lastName: "LASTNAME", externalJsonData: externalJsonData as [String: AnyObject], domain: "https://developers.botfol.io")
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
BotfolioChat.botMessageBackgroundColor = yellow
BotfolioChat.botMessageTextColor = .purple
BotfolioChat.userMessageBackgroundColor = .blue
BotfolioChat.userMessageTextColor = .black
BotfolioChat.mainTintColor = .red
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
