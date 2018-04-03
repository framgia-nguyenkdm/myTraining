//
//  ViewController.swift
//  LifeCycle
//
//  Created by khuc.d.m.nguyen on 4/3/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("View1: Did Load")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("View1: Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View1: Did Disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View1: Will Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("View1: Will Disappear")
    }
    @IBAction func tapShowView2(_ sender: Any) {
        self.performSegue(withIdentifier: "showView2", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

