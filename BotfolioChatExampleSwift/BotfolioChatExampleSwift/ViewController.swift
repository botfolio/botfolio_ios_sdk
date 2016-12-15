//
//  ViewController.swift
//  BotfolioChatExampleSwift
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
        
        NotificationCenter.default.addObserver(self, selector: #selector(newMessage(notification:)), name: NSNotification.Name.Botfolio.NewMessage, object: nil)
        
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 0, y: 90, width: self.view.frame.width, height: 40)
        btn.setTitle("Just a button", for: .normal)
        btn.addTarget(self, action: #selector(btnPressed), for: .touchUpInside)
        self.view.addSubview(btn)
        
        BotfolioChat.getUnreadCount { (count) in
            btn.setTitle("Unread Count: \(count)", for: .normal)
        }
    }
    
    func btnPressed() {
        let vc = BotfolioChatViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

