//
//  View2Controller.swift
//  PassData
//
//  Created by khuc.d.m.nguyen on 4/3/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit
protocol DataPassDelegate: class {
    func passDataWith(str: String)
}
let myNotificationKey = "com.ken.notificationKey"

class View2Controller: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    var myPassedStr: String? = ""
    var onCompletionHandler:((String) -> ())?
    var delegate: DataPassDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        typeLabel.text = "Passed with Segue"
        if let str = myPassedStr {
            resultLabel.text = str
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(doThisWhenNotified), name: NSNotification.Name(rawValue: myNotificationKey), object: nil)

    }
    @objc func doThisWhenNotified() {
        print("Notified to view 2")
        typeLabel.text = "Notification type"
        resultLabel.text = "I recieved your message"
    }
    
    @IBAction func tapPushWithDelegate(_ sender: Any) {
        delegate?.passDataWith(str: "Passed string with Delegate")
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func tapPushWithClosure(_ sender: Any) {
        onCompletionHandler!("Passed string with Closure")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapChangeView(_ sender: Any) {
        let view3 = View3Controller(nibName: "View3Controller", bundle: nil)
        self.navigationController?.pushViewController(view3, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
