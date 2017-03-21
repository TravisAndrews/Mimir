//
//  mapViewController.swift
//  Mimir(nav
//
//  Created by Travis J Andrews on 2/28/17.
//  Copyright © 2017 IT North. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class mapViewController: UIViewController , CLLocationManagerDelegate {
    
    //Map
    @IBOutlet weak var Map1: MKMapView!
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake (location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        Map1.setRegion(region, animated: true)
        
        self.Map1.showsUserLocation = true
        
        let pin1:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.337560, -95.960956)
        let annotation1 = MKPointAnnotation()
        
        annotation1.coordinate = pin1
        annotation1.title = "Florence Bank"
        annotation1.subtitle = "Constructed in 1856, is the oldest building Omaha."
        Map1.addAnnotation(annotation1)
        
        let pin2:CLLocationCoordinate2D = CLLocationCoordinate2DMake(41.338560, -95.960956)
        let annotation2 = MKPointAnnotation()
        
        annotation2.coordinate = pin2
        annotation2.title = "second"
        annotation2.subtitle = "something is here"
        Map1.addAnnotation(annotation2)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    
}
