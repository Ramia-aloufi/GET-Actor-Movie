//
//  DetailViewController.swift
//  GET People
//
//  Created by R on 20/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var labels: [UILabel]!
    
    
    
    
    
    
    var array:[String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(array!)
        labels[0].text = array![0]
        labels[1].text = array![1]
        labels[2].text = array![2]
        labels[3].text = array![3]
    }
    

}
