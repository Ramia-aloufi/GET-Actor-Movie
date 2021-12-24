//
//  ViewController.swift
//  GET People
//
//  Created by R on 18/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
var names = [Result]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getApi().ApiData { (data) in
            self.names =   data.results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        cell.textLabel?.text = names[indexPath.row].name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DetailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        let array = [
            names[indexPath.row].name,
            names[indexPath.row].gender,
            names[indexPath.row].birth_year,
            names[indexPath.row].mass
        ]
        
        
        DetailVC.array = array
        navigationController?.pushViewController(DetailVC, animated: true)
    }
   


}

