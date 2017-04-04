//
//  ViewController.swift
//  Mimir
//
//  Created by Travis J Andrews on 3/8/17.
//  Copyright © 2017 IT North. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


//Map
weak var Map: MKMapView!

let manager = CLLocationManager()

func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
{
    let location = locations[0]
    
    let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
    let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake (location.coordinate.latitude, location.coordinate.longitude)
    let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
    Map.setRegion(region, animated: true)
}
    


class ViewController: UIViewController {
   
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
