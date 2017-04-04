//
//  map4ViewController.swift
//  Mimir(nav
//
//  Created by Travis J Andrews on 3/2/17.
//  Copyright © 2017 IT North. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class map4ViewController: UIViewController , CLLocationManagerDelegate {
    
    //Map
    @IBOutlet weak var Map4: MKMapView!
    
    let manager4 = CLLocationManager()
    
    func locationManager(_ manager4: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location4 = locations[0]
        
        let span4:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation4:CLLocationCoordinate2D = CLLocationCoordinate2DMake (location4.coordinate.latitude, location4.coordinate.longitude)
        let region4:MKCoordinateRegion = MKCoordinateRegionMake(myLocation4, span4)
        Map4.setRegion(region4, animated: true)
        
        self.Map4.showsUserLocation = true
        
        let pin7:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.337560, -95.960956)
        let annotation7 = MKPointAnnotation()
        
        annotation7.coordinate = pin7
        annotation7.title = "Florence Bank"
        annotation7.subtitle = "Constructed in 1856, is the oldest building Omaha."
        Map4.addAnnotation(annotation7)
        
        let pin8:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.338560, -95.960956)
        let annotation8 = MKPointAnnotation()
        
        annotation8.coordinate = pin8
        annotation8.title = "second"
        annotation8.subtitle = "something is here"
        Map4.addAnnotation(annotation8)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager4.delegate = self
        manager4.desiredAccuracy = kCLLocationAccuracyBest
        manager4.requestWhenInUseAuthorization()
        manager4.startUpdatingLocation()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    
}
