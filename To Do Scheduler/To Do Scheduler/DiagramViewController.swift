//
//  DiagramViewController.swift
//  To Do Scheduler
//
//  Created by Songling Jiang on 3/13/22.
//

import UIKit

class DiagramViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
    let progress = Progress (totalUnitCount: 10)
    
    @IBOutlet weak var ProField: UITextField!
    
    @IBOutlet weak var ProBar: UIProgressView!
    @IBOutlet weak var doneBar: UIButton!
    
    @IBAction func analyzeTapped(_ sender: Any) {
       
       

        let progressFloat = ratio
        self.ProBar.setProgress (Float(progressFloat), animated: true)
        ProField.text = "\(ratio*100)" + "%"
        let buttonRect1 = doneBar.frame
        doneBar.frame = CGRect (x: buttonRect1.origin.x, y: buttonRect1.origin.y, width: buttonRect1.size.width, height: buttonRect1.size.height + ratio*50)

    }
    
    @IBAction func progressPercent(_ sender: Any) {
        ProField.text = "\(ratio*100)" + "%"
    }
    
    @IBAction func doneBar(_ sender: UIButton) {
        //tap and the button resizes, acts as a bar graph
        //let buttonRect1 = doneBar.frame
        //doneBar.frame = CGRect (x: buttonRect1.origin.x, y: buttonRect1.origin.y, width: buttonRect1.size.width, height: buttonRect1.size.height + ratio*50)
        
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

