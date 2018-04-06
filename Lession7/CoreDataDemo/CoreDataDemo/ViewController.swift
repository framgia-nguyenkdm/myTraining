//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by khuc.d.m.nguyen on 4/6/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var people: [NSManagedObject] = []
    
    var names: [String] = []    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func fetchData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            people = result as! [NSManagedObject]
        } catch {
            
            print("Failed")
        }
    }
    func recordData(name: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context)
        let newPerson = NSManagedObject(entity: entity!, insertInto: context)
        newPerson.setValue(name, forKeyPath: "name")
        //Save
        do {
            try context.save()
            people.append(newPerson)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    @IBAction func tapAddName(_ sender: Any) {
        let alert = UIAlertController(title: "New Name", message: "Add your name", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) { [weak self] (action) in
            guard let textField = alert.textFields?.first, let nameToSave = textField.text else {
                return
            }
            self?.recordData(name: nameToSave)
            self?.myTableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myPeople = people[indexPath.row]
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = myPeople.value(forKeyPath: "name") as? String
        return cell!
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        if editingStyle == .delete {
            let myPerson = people[indexPath.row]
            context.delete(myPerson)
            appDelegate.saveContext()
            
            fetchData()
            myTableView.reloadData()
            
        }
        
    }
    
}
