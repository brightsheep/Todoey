//
//  ViewController.swift
//  Todoey
//
//  Created by sydney on 2018/4/1.
//  Copyright © 2018年 Sydney Yang. All rights reserved.
//

import UIKit


class TodoListViewController: UITableViewController {

    
    let itemArray = ["Find Milk", "Buy Eggs", "Destory the earth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        //MARK - Tableview Datasource Methods
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
            
    }
    
        //MARK - TableView Deledate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }

}

