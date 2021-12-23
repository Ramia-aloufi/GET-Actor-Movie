//
//  FilmTableViewController.swift
//  GET People
//
//  Created by R on 18/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class FilmTableViewController: UITableViewController {

    var films = [Result1]()
        override func viewDidLoad() {
            super.viewDidLoad()
            getApi().ApiDataFilm { (data) in
                self.films =   data.results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            
            // Do any additional setup after loading the view.
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return films.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
            cell.textLabel?.text = films[indexPath.row].title
            return cell
        }
    //
       


    }

