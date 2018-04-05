//
//  ViewController.swift
//  JSON_Map
//
//  Created by khuc.d.m.nguyen on 4/5/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    var users: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getContent(urlLink: "https://api.github.com/users/google/repos")
        
        self.myTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        self.myTableView.rowHeight = UITableViewAutomaticDimension
        self.myTableView.estimatedRowHeight = 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getContent(urlLink: String) {
        let url = URL(string: urlLink)
        let session = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let content = data {
                do {
                    let jsonArr = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as! Array<Any>
                    for json in jsonArr {
                        if let item = json as? [String: Any] {
                            let a = User(JSON: item)!
                            self.users.append(a)
                        }
                    }
                } catch {
                    
                }
            } else {
                print("Error")
            }
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
        }
        session.resume()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = users[indexPath.row].name
        cell.fullNameLabel.text = users[indexPath.row].fullname
        cell.idLabel.text = users[indexPath.row].id.description
        cell.loginTypeLabel.text = users[indexPath.row].loginType
        return cell
    }
}
