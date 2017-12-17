//
//  ViewController.swift
//  FirebaseEmailLogin
//
//  Created by mac on 16-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var submitButtonTitle: String?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var inlogButton: UIButton!

    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        self.inlogButton.setTitle(submitButtonTitle!, for: UIControlState.normal)
    }
    
    // error must be 6 chars long or more
    @IBAction func submit(_ sender: UIButton) {
        if (checkTextFields()){

        if(inlogButton.currentTitle! == "Login"){
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil{
                    self.errorLabel.text = "Singin failed: \(error!)"
                }else {
                    self.errorLabel.text = "Signed in!"
                }
                
            }
        }else{
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil{
                    self.errorLabel.text = "User creation failed: \(error!)"
                    print("\(error!)")
                }else {
                    self.errorLabel.text = "Created user!"

                }
            }
             }
        } else{
            errorLabel.text = "Please enter a value into both field."
        }
    }
    
    func checkTextFields() -> Bool{
        if (emailTextField.text == nil || passwordTextField.text == nil){
            return false
        }else{
            return true
        }
    }
    
}

