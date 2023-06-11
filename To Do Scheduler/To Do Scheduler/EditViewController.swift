//
//  EditViewController.swift
//  To Do Scheduler
//
//  Created by Songling Jiang on 3/12/22.
//

import UIKit

class EditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        taskField.returnKeyType = .done
        taskField.autocapitalizationType = .words
        taskField.autocorrectionType = .no
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var taskField: UITextField!
    
    
    @IBAction func addPressed(_ sender: Any) {
        if (taskField.text == "") {
            
            let alertMessage = UIAlertController(title: "Invalid", message: "Task you entered is too short, please try again", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)

            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

            alertMessage.addAction(ok)
            alertMessage.addAction(cancel)

            self.present(alertMessage, animated: true, completion: nil)
        }
        else{
            tasks.append(taskField.text!)
            taskField.text = ""
        }
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
