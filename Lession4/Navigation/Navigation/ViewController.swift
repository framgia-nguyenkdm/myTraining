//
//  ViewController.swift
//  Navigation
//
//  Created by khuc.d.m.nguyen on 4/2/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myArr = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myArr = ["Nguyen", "Phuc", "Hoang","Thuy", "Quynh"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //pass arr for the next View
        if segue.identifier == Segues.showViewB, let vc = segue.destination as? ViewBController {
            vc.passedArr = myArr
        }
    }

    @IBAction func tapShowViewB(_ sender: Any) {
        self.performSegue(withIdentifier: Segues.showViewB, sender: nil)
    }
    
}

