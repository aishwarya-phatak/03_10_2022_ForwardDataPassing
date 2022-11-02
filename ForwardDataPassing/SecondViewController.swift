//
//  SecondViewController.swift
//  ForwardDataPassing
//
//  Created by Vishal Jagtap on 02/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataLabelOnSecondViewController: UILabel!
    
    var dataFromFirstViewController : String?          
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataLabelOnSecondViewController.text = dataFromFirstViewController
        navigationItem.hidesBackButton = true
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
