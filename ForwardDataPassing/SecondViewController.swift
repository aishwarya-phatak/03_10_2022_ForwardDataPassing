//
//  SecondViewController.swift
//  ForwardDataPassing
//
//  Created by Vishal Jagtap on 02/11/22.
//

import UIKit

protocol BackDataPassingProtocol{
    func passDataToFirstViewController(textToPass : String)         //backward step -- 1
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nametextFieldOnSecondViewController: UITextField!
    @IBOutlet weak var dataLabelOnSecondViewController: UILabel!
    
    var dataFromFirstViewController : String?
    var delegateSVC : BackDataPassingProtocol?             //backward step -- 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataLabelOnSecondViewController.text = dataFromFirstViewController
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnClickToNavigateToFirstViewCOntroller(_ sender: Any) {
        guard let delegateOnSecondViewContoller = delegateSVC else{
            print("Delegate not Found")
            return
        }
        
        let nameRetrivedFromTextField = self.nametextFieldOnSecondViewController.text
        
        delegateOnSecondViewContoller.passDataToFirstViewController(textToPass: nameRetrivedFromTextField!)
        
        navigationController?.popViewController(animated: true)
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
