//
//  ViewController.swift
//  GradientExample
//
//  Created by mac on 17-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recrowdLogoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        self.view.bringSubview(toFront: recrowdLogoImageView)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 151.0/255.0, green: 215.0/255.0, blue: 243.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 18.0/255.0, green: 107.0/255.0, blue: 189.0/255.0, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height:self.view.frame.height/1.4)
        
        self.view.layer.addSublayer(gradientLayer)
        
    }

}

