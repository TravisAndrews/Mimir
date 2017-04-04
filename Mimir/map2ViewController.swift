//
//  map2ViewController.swift
//  Mimir
//
//  Created by Travis J Andrews on 3/2/17.
//  Copyright © 2017 IT North. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class map2ViewController: UIViewController , CLLocationManagerDelegate {
    
    //Map
    @IBOutlet weak var Map2: MKMapView!
    
    let manager2 = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location2 = locations[0]
        
        let span2:MKCoordinateSpan = MKCoordinateSpanMake(0.0000001, 0.0000001)
        let myLocation2:CLLocationCoordinate2D = CLLocationCoordinate2DMake (location2.coordinate.latitude, location2.coordinate.longitude)
        let region2:MKCoordinateRegion = MKCoordinateRegionMake(myLocation2, span2)
        Map2.setRegion(region2, animated: true)
        
        self.Map2.showsUserLocation = true
        
        let pin3:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.2985, -95.9679)
        let annotation3 = MKPointAnnotation()
        
        annotation3.coordinate = pin3
        annotation3.title = "Florence Bank"
        annotation3.subtitle = "Constructed in 1856, is the oldest building Omaha."
        Map2.addAnnotation(annotation3)
        
        let pin4:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.2985, -95.96791)
        let annotation4 = MKPointAnnotation()
        
        annotation4.coordinate = pin4
        annotation4.title = "second"
        annotation4.subtitle = "something is here"
        Map2.addAnnotation(annotation4)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager2.delegate = self
        manager2.desiredAccuracy = kCLLocationAccuracyBest
        manager2.requestWhenInUseAuthorization()
        manager2.startUpdatingLocation()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    
}
