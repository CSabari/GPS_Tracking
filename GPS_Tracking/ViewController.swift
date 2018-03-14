//
//  ViewController.swift
//  GPS_Tracking
//
//  Created by SABARI on 14/03/18.
//  Copyright © 2018 com.ios.sabari. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        mapview.mapType = MKMapType.standard //1
        
        let location = CLLocationCoordinate2D(latitude: 23.0025, longitude: 72.5714) //2
        
        let span = MKCoordinateSpanMake(0.05, 0.05) //3
        let region = MKCoordinateRegion(center: location, span: span)
        mapview.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation() //4
        annotation.coordinate = location
        annotation.title = "Sabari"
        annotation.subtitle = "India"
        mapview.addAnnotation(annotation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

