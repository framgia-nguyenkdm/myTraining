//
//  ViewController.swift
//  PassData
//
//  Created by khuc.d.m.nguyen on 4/3/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myStr: String? = "Hello my name is Ken"
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        //typeLabel.text = "Notification type"
        resultLabel.text = "I recieved your message"
    }
    
    @IBAction func tapPushWithSegue(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.showView2, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.showView2, let view2 = segue.destination as? View2Controller {
            view2.myPassedStr = myStr!
            view2.delegate = self as! DataPassDelegate
            view2.onCompletionHandler = {[weak self] (data) in
                self?.resultLabel.text = data
            }
        }
    }
}

extension ViewController: DataPassDelegate {
    func passDataWith(str: String) {
        resultLabel.text = str
    }
}
