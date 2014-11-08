//
//  ViewController.swift
//  MapDemo
//
//  Created by Galen Long on 11/8/14.
//  Copyright (c) 2014 Galen Long. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // replace these with coordinates from GPS
        var latitude:CLLocationDegrees = 48.399193
        var longitude:CLLocationDegrees = 9.993341
        
        // defines how "zoomed in" we are
        var latitudeDelta:CLLocationDegrees = 0.001
        var longitudeDelta:CLLocationDegrees = 0.001
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
        
        // defines what rectangle of map we'll show
        // centered at location, zoomed in to span
        var location:CLLocationCoordinate2D =  CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.mapView.setRegion(region, animated: true)
        
        // make pin on map, add it
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Title"
        annotation.subtitle = "Subtitle"

        self.mapView.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

