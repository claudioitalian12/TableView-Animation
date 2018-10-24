//
//  ViewController.swift
//  TableViewEffect
//
//  Created by claudio Cavalli on 24/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        animateTable()
    }

}

