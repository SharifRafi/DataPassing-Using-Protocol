//
//  SecondViewController.swift
//  PassDataUsingProtocol
//
//  Created by Admin on 1/27/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

protocol PassDataToFirstVC {
    func passData(str: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var seconfTextField: UITextField!
    
    var data = ""
    var delegate: PassDataToFirstVC!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seconfTextField.text = data
    }
    

    @IBAction func submitBackButton(_ sender: Any) {
        
        delegate.passData(str: seconfTextField.text!)
        
        navigationController?.popViewController(animated: true)
    }
}
