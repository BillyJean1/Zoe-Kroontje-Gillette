//
//  EntryViewController.swift
//  FirebaseEmailLogin
//
//  Created by mac on 16-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signup(_ sender: UIButton) {
        performSegue(withIdentifier: "goToInput", sender: sender)
    }
    
    @IBAction func login(_ sender: UIButton) {
        performSegue(withIdentifier: "goToInput", sender: sender)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.submitButtonTitle = (sender as! UIButton).currentTitle!
            
        }
    }
 

}
