//
//  View2Controller.swift
//  LifeCycle
//
//  Created by khuc.d.m.nguyen on 4/3/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         print("View2: Did Load")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("View2: Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View2: Did Disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View2: Will Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("View2: Will Disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
