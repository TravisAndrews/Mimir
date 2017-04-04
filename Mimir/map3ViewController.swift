//
//  map3ViewController.swift
//  Mimir(nav
//
//  Created by Travis J Andrews on 3/2/17.
//  Copyright © 2017 IT North. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class map3ViewController: UIViewController , CLLocationManagerDelegate {
    
    //Map
    @IBOutlet weak var Map3: MKMapView!
    
    let manager3 = CLLocationManager()
    
    func locationManager(_ manager3: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location3 = locations[0]
        
        let span3:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation3:CLLocationCoordinate2D = CLLocationCoordinate2DMake (location3.coordinate.latitude, location3.coordinate.longitude)
        let region3:MKCoordinateRegion = MKCoordinateRegionMake(myLocation3, span3)
        Map3.setRegion(region3, animated: true)
        
        self.Map3.showsUserLocation = true
        
        let pin5:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.337560, -95.960956)
        let annotation5 = MKPointAnnotation()
        
        annotation5.coordinate = pin5
        annotation5.title = "Florence Bank"
        annotation5.subtitle = "Constructed in 1856, is the oldest building Omaha."
        Map3.addAnnotation(annotation5)
        
        let pin6:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.338560, -95.960956)
        let annotation6 = MKPointAnnotation()
        
        annotation6.coordinate = pin6
        annotation6.title = "second"
        annotation6.subtitle = "something is here"
        Map3.addAnnotation(annotation6)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager3.delegate = self
        manager3.desiredAccuracy = kCLLocationAccuracyBest
        manager3.requestWhenInUseAuthorization()
        manager3.startUpdatingLocation()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    
}
