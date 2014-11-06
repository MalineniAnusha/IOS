//
//  ViewController.swift
//  MapView-Swift
//
//  Created by mac mini on 11/3/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.mapType =  MKMapType.Hybrid
        
//        let span = MKCoordinateSpanMake(0.05, 0.05)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
        
        
        
        let location = CLLocationCoordinate2D(latitude : 17.8017,longitude : 83.3533)
        let location1 = CLLocationCoordinate2D(latitude: 17.4833,longitude: 78.4167)
        let location2 = CLLocationCoordinate2D(latitude: 12.9738, longitude: 77.6119)

        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Madhurawada"
        annotation.subtitle = "Visakhapatnam"
        mapView.addAnnotation(annotation)
        
        let annotation1 = MKPointAnnotation()
        annotation1.setCoordinate(location1)
        annotation1.title = "Kukatpally"
        annotation1.subtitle = "Hyderabad"
        mapView.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.setCoordinate(location2)
        annotation2.title = "MG Road"
        annotation2.subtitle = "Banglore"
        mapView.addAnnotation(annotation2)
        
        var coordinates = [location,location1,location2]
        var polyLine = MKPolyline(coordinates: &coordinates, count: 3)
        mapView.addOverlay(polyLine)

        
}
  
func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
            
            if (overlay is MKPolyline)
            {
                var polylineRender = MKPolylineRenderer(overlay: overlay)
                polylineRender.strokeColor = UIColor.blueColor()
                polylineRender.lineWidth = 5
                return polylineRender
            }
            return nil
            
}
   
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}




