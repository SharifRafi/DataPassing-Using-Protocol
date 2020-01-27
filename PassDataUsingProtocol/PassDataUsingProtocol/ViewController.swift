//
//  ViewController.swift
//  PassDataUsingProtocol
//
//  Created by Admin on 1/27/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         //setDesign()
    }


    @IBAction func submitButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        vc.data = firstTextField.text!
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}





extension ViewController: PassDataToFirstVC{
    func passData(str: String) {
        firstTextField.text = str
    }
    
//    func setDesign(){
//
//    }
}
