//
//  ViewController.swift
//  Login
//
//  Created by Mikolaj Lukasik on 09/08/2019.
//  Copyright © 2019 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var username: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != nil {
            guard let senderButton = sender as? UIButton else {return}
            if senderButton == forgotUserNameButton {
                segue.destination.navigationItem.title = "Forgot User Name"
            } else if senderButton == forgotPasswordButton {
                segue.destination.navigationItem.title = "Forgot Password"
            }
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
        
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUserNameButton)
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }

}

