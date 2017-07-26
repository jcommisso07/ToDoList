//
//  CreateTaskViewController.swift
//  ToDoList
//
//  Created by Joseph Commisso on 7/25/17.
//  Copyright © 2017 Joseph Commisso. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        // create task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // add new task to array in previous viewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        // move back to TaskViewController
        navigationController!.popViewController(animated: true)
        
    }
}
