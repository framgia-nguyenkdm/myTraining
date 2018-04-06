//
//  ViewController.swift
//  mySQLite
//
//  Created by khuc.d.m.nguyen on 4/6/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var contacts = [Contact]()
    @IBOutlet weak var ageLabel: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reloaddata()
    }
    @IBAction func tapAdd(_ sender: Any) {
        let newContact = Contact()
        newContact.ID = Int(arc4random_uniform(100))
        newContact.name = nameLabel.text!
        newContact.age = Int(ageLabel.text!)!
        newContact.phone = phoneLabel.text!
        if FMDBDatabase.getInstance().insertData(newContact) == true {
            showAlert(message: "Completed")
            self.reloaddata()
        } else {
            showAlert(message: "Failed")
        }
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func reloaddata(){
        contacts = FMDBDatabase.getInstance().getAllData() as! [Contact]
        self.myTableView.reloadData()
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = contacts[indexPath.row].name
        cell?.detailTextLabel?.text = contacts[indexPath.row].phone
        return cell!
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if FMDBDatabase.getInstance().deletaData(self.contacts[indexPath.row]) == true {
                self.reloaddata()
            } else {
                showAlert(message: "Failed to delete")
            }
            
        }
    }
}
