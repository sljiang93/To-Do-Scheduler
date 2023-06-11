//
//  ToDoViewController.swift
//  To Do Scheduler
//
//  Created by Songling Jiang on 3/12/22.
//

import UIKit

var tasks = [String] ()
//var tasks = ["play fortnite","study iOS", "lift weights", "watch Attack on Titan", "play the guitar"]
var deleteNum = 0
var ratio = 0.0

class ToDoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    public func tableView (_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tasks.remove (at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            deleteNum += 1
            ratio = Double(Double(deleteNum)/(Double(tasks.count)+Double(deleteNum)))
            print(ratio)  //use this float to construct progress bar
            
            tableView.reloadData()
        }
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "taskCell")
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
