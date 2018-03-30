//
//  ViewController.swift
//  Lession3_LoginView
//
//  Created by khuc.d.m.nguyen on 3/30/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let paddingViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.emailTextField.frame.height))
        emailTextField.leftView = paddingViewEmail
        emailTextField.leftViewMode = UITextFieldViewMode.always
        
        let paddingViewPass = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.passTextField.frame.height))
        passTextField.leftView = paddingViewPass
        passTextField.leftViewMode = UITextFieldViewMode.always
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

