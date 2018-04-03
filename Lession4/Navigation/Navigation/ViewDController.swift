//
//  ViewDController.swift
//  Navigation
//
//  Created by khuc.d.m.nguyen on 4/3/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

protocol DataEnterDelegate: class {
    func userDidEnterInfo(info: String)
}

class ViewDController: UIViewController {
    //Create weak var to avoid retain cycle
    weak var delegate: DataEnterDelegate? = nil

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapToBackViewB(_ sender: Any) {
       
        let viewB = self.navigationController?.viewControllers[1] as! ViewBController
        self.navigationController?.popToViewController(viewB, animated: true)
    }
    
    @IBAction func tapToPassDataToViewC(_ sender:UIStoryboardSegue) {
        print("Please")
        if (myTextField.text?.isEmpty)! {
            self.showAlert(title: "Warning", message: "You have to type some text")
        }else {
            delegate?.userDidEnterInfo(info: myTextField.text!)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
