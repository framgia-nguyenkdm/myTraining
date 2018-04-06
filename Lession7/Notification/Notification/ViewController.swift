//
//  ViewController.swift
//  Notification
//
//  Created by khuc.d.m.nguyen on 4/5/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert,.sound,.badge]) { (didAllow, error) in
            if didAllow {
                print("Allow to show notification")
            } else {
                print(error?.localizedDescription ?? "")
            }
        }
        center.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapShowNotiAfter5s(_ sender: Any) {
        showNotification()
    }
    @IBAction func tapShowNoti(_ sender: Any) {
    }
    

    func showNotification() {
        // create noti content
        let content = UNMutableNotificationContent()
        
        //ad title, subtitle, body, badge
        content.title = "Notification"
        content.subtitle = "iOS Development is fun"
        content.body = "We are learning about iOS Local Notification"
        
        //get trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false) // show after 5s
        // get the noti request
        let request = UNNotificationRequest(identifier: "Simple", content: content, trigger: trigger)
        // Add noti to NotificationCenter
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

extension ViewController: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        //displaying the ios local notification when app is in foreground
        completionHandler([.alert, .badge, .sound])
    }
}

