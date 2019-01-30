//
//  ViewController.swift
//  Todoey
//
//  Created by Ryan Davey on 2019-01-29.
//  Copyright © 2019 Ryan Davey. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = ["Find Mike", "Buy Eggs", "Destroy Demogorgan"]
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let items = defaults.array(forKey: "ToDoListArray") as? [String] {
            itemArray = items
        }

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
    
    // MARK --  ADD NEW ITEMS
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        
        var textFieldItem = UITextField()
        
        
        let alert = UIAlertController(title: "Add Items To List", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action1) in
            // what will happe when button is pressed
            
            
            self.itemArray.append(textFieldItem.text!)
            self.tableView.reloadData()
            
            self.defaults.set(self.itemArray, forKey: "ToDoListArray")
            
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new Item"
            textFieldItem = alertTextField
        }
        
        
        
        
        alert.addAction(action)
        present(alert, animated: true)
        
    }
}

