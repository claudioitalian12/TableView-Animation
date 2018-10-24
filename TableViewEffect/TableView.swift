//
//  TableView.swift
//  TableViewEffect
//
//  Created by claudio Cavalli on 24/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
extension ViewController: UITableViewDelegate, UITableViewDataSource{
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "hello \(indexPath.row)"
        return cell
    }
    
    
    
    func animateTable() {
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a
            UIView.animate(withDuration: 0.7, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            })
            
            
            index += 1
        }
}
    
    
}
