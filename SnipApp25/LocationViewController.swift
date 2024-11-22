//
//  LocationViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/21/24.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!
    
    let locations = [
            ["name": "Shop A", "address": "123 Main St, Springfield"],
            ["name": "Shop B", "address": "456 Elm St, Metropolis"],
            ["name": "Shop C", "address": "789 Oak St, Gotham"],
            ["name": "Shop D", "address": "101 Pine St, Star City"],
            ["name": "Shop E", "address": "202 Maple St, Central City"],
            ["name": "Shop F", "address": "303 Cedar St, Smallville"]
        ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addGradientBackground()
        tableView.dataSource = self
        tableView.delegate = self
                
                // Register a basic UITableViewCell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "LocationCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath)
        let location = locations[indexPath.row]
        cell.textLabel?.text = location["name"]
        cell.detailTextLabel?.text = location["address"]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
            // Get the selected location
            let location = locations[indexPath.row]
            
            // Show an alert with location details
            let alert = UIAlertController(
                title: location["name"],
                message: location["address"],
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }

}
