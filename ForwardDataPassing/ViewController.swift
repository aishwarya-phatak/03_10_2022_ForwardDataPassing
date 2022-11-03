//
//  ViewController.swift
//  ForwardDataPassing
//
//  Created by Vishal Jagtap on 02/11/22.
//

import UIKit

class ViewController: UIViewController, BackDataPassingProtocol{   //conform to the protocol
   
    @IBOutlet weak var dataTextFieldOnFirstViewController: UITextField!
    
    @IBOutlet weak var nameLabelOnFirstViewController: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataTextFieldOnFirstViewController.text = ""
    }
    
    @IBAction func btnClickToNavigateToSVC(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let dataToBePassed = self.dataTextFieldOnFirstViewController.text
        secondViewController.dataFromFirstViewController = dataToBePassed
        secondViewController.delegateSVC = self                             //backward step -- 6
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func passDataToFirstViewController(textToPass: String) {                //backwar step -- 5
        self.nameLabelOnFirstViewController.text = textToPass
    }
}
