//
//  PieViewController.swift
//  To Do Scheduler
//
//  Created by Songling Jiang on 3/12/22.
//

import UIKit

class ProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var progressField: UITextField!
    
    @IBOutlet weak var detailField: UITextField!
    
    @IBAction func progress(_ sender: Any) {
        //shows up if you switch back and forth between the pages so use the refresh button to guarantee the latest stats
        progressField.text = "\(ratio*100)" + "%"

        if 0.0 < ratio && ratio < 0.5 {
            detailField.text = "Nice progress, keep going!"
        }
        else if ratio >= 0.5 && ratio < 1.0 {
            detailField.text = "Almost there!"
        }
        else if ratio == 1.0 {
            detailField.text = "You're done! Now go to bed!"
        }

        else {
            detailField.text = "Oh no, better start working!"
        }
    }
    
    
    
    @IBAction func refresh(_ sender: Any) {
        progressField.text = "\(ratio*100)" + "%"
        if 0.0 < ratio && ratio < 0.5 {
            detailField.text = "Nice progress, keep going!"
        }
        else if ratio >= 0.5 && ratio < 1.0 {
            detailField.text = "Almost there!"
        }
        else if ratio == 1.0 {
            detailField.text = "You're done! Now go to bed!"
        }

        else {
            detailField.text = "Oh no, better start working!"
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

