//
//  ViewController.swift
//  TableView
//
//  Created by McCabe Tonna on 11/6/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var tasks = ["something", "something else", "third"]
    
     var inputText = ""
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var taskTextfield: UITextField!
    

    @IBAction func beastButtonPressed(_ sender: UIButton) {

        
        inputText = taskTextfield.text!
        tasks.append(inputText)
        print("in append",inputText)
        tableView.reloadData()
        taskTextfield.text = ""
        
//        public mutating func append(_ taskTextfield.text: String) {
//            tasks)
//        }
//        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell

    }
   
}
