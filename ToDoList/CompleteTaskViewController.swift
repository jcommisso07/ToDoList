//
//  CompleteTaskViewController.swift
//  ToDoList
//
//  Created by Joseph Commisso on 7/26/17.
//  Copyright © 2017 Joseph Commisso. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        // move back to TaskViewController
        navigationController!.popViewController(animated: true)
    }
    
    
}
