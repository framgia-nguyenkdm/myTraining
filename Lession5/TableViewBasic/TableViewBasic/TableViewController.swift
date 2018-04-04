//
//  TableViewController.swift
//  TableViewBasic
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var cities = [City]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.createArr()
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = cities[indexPath.row].name
        cell.descriptionLabel.text = cities[indexPath.row].description
        cell.imgView.image = UIImage(named: "icon_city")

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TableViewController {
    func createArr() {
        let city1 = City(name: "Tokyo", description: "Beautiful city to visit")
        let city2 = City(name: "New York", description: "Modern city")
        let city3 = City(name: "Ho Chi Minh", description: "Best place for enjoying street food")
        let city4 = City(name: "Kualar Lumpur", description: "The cultural hub of Malaysia, Kuala Lumpur is visually defined by the iconic Petronas Twin Towers, which, at 88 stories high, are the tallest twin buildings in the world and a vision of modern architecture. On the flip side, the Sri Mahamariamman is the oldest Hindu temple in Malaysia, its façade a colorful totem pole of iconography. Shopping at the Central Market is a joyful experience that involves haggling, handicrafts, and happiness.")
        let city5 = City(name: "Texas", description: "Many vietnamese people live here")
        
        cities = [city1,city2,city3,city4,city5]
    }
}
