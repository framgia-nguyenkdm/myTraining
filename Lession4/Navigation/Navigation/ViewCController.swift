//
//  ViewCController.swift
//  Navigation
//
//  Created by khuc.d.m.nguyen on 4/2/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewCController: UIViewController {

    var myPassedStr: String? = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapShowPreviousView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapBackToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func tapShowViewD(_ sender: Any) {
        //MARK: Push to next VC without segue
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let viewD = stb.instantiateViewController(withIdentifier: "viewD") as! ViewDController

        viewD.delegate = self
        self.navigationController?.pushViewController(viewD, animated: true)
        
        //MARK: Push to next VC with segue
//        self.performSegue(withIdentifier: Segues.showViewD, sender: nil)
    }

}
extension ViewCController : DataEnterDelegate {
    func userDidEnterInfo(info: String) {
        print("\(info)")
    }
}
