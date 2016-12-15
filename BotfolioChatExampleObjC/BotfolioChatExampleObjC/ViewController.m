//
//  ViewController.m
//  BotfolioChatExampleObjC
//
//  Created by Aleks Mutlu on 13/12/2016.
//  Copyright © 2016 Lena Software. All rights reserved.
//

#import "ViewController.h"
#import <BotfolioChat/BotfolioChat.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setFrame:CGRectMake(0, 90, self.view.frame.size.width, 40)];
    [btn setTitle:@"Just a button" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [BotfolioChat getUnreadCountWithCompletion:^(NSInteger count) {
        [btn setTitle: [NSString stringWithFormat:@"Unread Count: %i", count] forState:UIControlStateNormal];
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(newMessage:) name:[BotfolioChat botfolioChatNewMessageNotification] object:nil];
}

- (void)btnPressed {
    BotfolioChatViewController *vc = [[BotfolioChatViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}
    
- (void)newMessage: (NSNotification*) notification {
    
    Message *m = [notification.userInfo valueForKey:@"message"];
    
    MessageTypes messageType = [BotfolioChat getMessageTypeByInt: m.messageTypeInt];
    
    switch (messageType) {
        case MessageTypesText:
        NSLog(@"%@", m.text);
        break;
        case MessageTypesContact:
        NSLog(@"%@", m.contactName);
        default:
        break;
    }
}
    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
