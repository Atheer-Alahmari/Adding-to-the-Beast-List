//
//  ViewController.swift
//  Adding to the Beast List
//
//  Created by Atheer Alahmari on 05/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table_View: UITableView!
        @IBOutlet weak var addTask_TF: UITextField!
    var task :[String] = ["Finish Assignment ", "Watch Movie", "Sleep" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table_View.dataSource = self // important thing
    }
    
    
    @IBAction func AddNewTask(_ sender: UIButton) {
        
        if let newTask = addTask_TF.text { // to check if there or not 
            if newTask != ""{
            task.append(newTask)
            addTask_TF.text = ""
            }}
        table_View.reloadData()
    
         
    }
    


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_Cell", for: indexPath)
        
        cell.textLabel?.text = task[indexPath.row]
        return cell
    }
    
    
}
