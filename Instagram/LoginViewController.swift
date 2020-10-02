//
//  LoginViewController.swift
//  Instagram
//
//  Created by Andy Wang on 10/1/20.
//  Copyright © 2020 andywang1197@icloud.com. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    @IBOutlet weak var usernameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            // if you're here, you either have a user or nil
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user  = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
