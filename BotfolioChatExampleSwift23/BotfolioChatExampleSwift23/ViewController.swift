//
//  ViewController.swift
//  BotfolioChatExampleSwift23
//
//  Created by Aleks Mutlu on 15/12/2016.
//  Copyright © 2016 Lena Software. All rights reserved.
//

import UIKit
import BotfolioChat

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(newMessage(_:)), name: NSNotificationName.Botfolio.NewMessage, object: nil)
        
        let btn = UIButton(type: .System)
        btn.frame = CGRectMake(0, 90, self.view.frame.width, 40)
        btn.setTitle("Just a button", forState: .Normal)
        btn.addTarget(self, action: #selector(btnPressed), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        BotfolioChat.getUnreadCount { (count) in
            btn.setTitle("Unread Count: \(count)", forState: .Normal)
        }
    }
    
    func newMessage(notification: NSNotification) {
        if let message = notification.userInfo?["message"] as? Message {
            if message.messageType == .text {
                print(message.text!)
            }
            else if message.messageType == .contact {
                print(message.contactName)
            }
            
            print("Sent by \(message.sentByBot == true ? "Bot" : "User")")
        }
    }

    func btnPressed() {
        let vc = BotfolioChatViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

