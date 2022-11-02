//
//  ViewController.swift
//  ForwardDataPassing
//
//  Created by Vishal Jagtap on 02/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dataTextFieldOnFirstViewController: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataTextFieldOnFirstViewController.text = ""
        
    }
    
    @IBAction func btnClickToNavigateToSVC(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let dataToBePassed = self.dataTextFieldOnFirstViewController.text
        secondViewController.dataFromFirstViewController = dataToBePassed
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
