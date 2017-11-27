//
//  ViewController.swift
//  MapKitExample
//
//  Created by mac on 27-11-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapkitView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let zoom =  1000
        let coordinate = CLLocationCoordinate2DMake(51.6493838, 5.0456024)
        mapkitView.setRegion(MKCoordinateRegionMakeWithDistance(coordinate, CLLocationDistance(zoom), CLLocationDistance(zoom)), animated: true)
        let baronCoordinate = CLLocationCoordinate2DMake(51.6481221, 5.0507569)
        let baronPin = MapPin(title: "Baron 1898", subtitle: "Achtbaan", coordinate: baronCoordinate)
    
        mapkitView.addAnnotation(baronPin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

