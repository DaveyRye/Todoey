//
//  ViewController.swift
//  Todoey
//
//  Created by Ryan Davey on 2019-01-29.
//  Copyright © 2019 Ryan Davey. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demogorgan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // Mark - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: path)
        
        cell.textLabel?.text = itemArray[path.row]
        
        return cell
    }
    
    // MARK - Tableview Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
      //  print (itemArray[path.row])
        
        if tableView.cellForRow(at: path)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: path)?.accessoryType = .none
            
        } else {
            
            tableView.cellForRow(at: path)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: path, animated: true)
    }
}

