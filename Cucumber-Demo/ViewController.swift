//
//  ViewController.swift
//  Cucumber-Demo
//
//  Created by Nikita Makarov on 11/23/17.
//  Copyright © 2017 Nikita Makarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if loginTextField.text == "admin" && passwordTextField.text == "password" {
            return true
        }
        else {
            let alert = UIAlertController(title: "Go away, coolhacker!", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay :(", style: .cancel, handler: nil))
            present(alert, animated: true) { [unowned self] in
                self.loginTextField.text = ""
                self.passwordTextField.text = ""
            }
            return false
        }
    }
    
}
