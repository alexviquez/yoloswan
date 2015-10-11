//
//  MapController.swift
//  Yoloswan
//
//  Created by Christian de J Moreno Marín on 11/10/15.
//  Copyright © 2015 Alejandro Viquez. All rights reserved.
//

import UIKit
import MapKit

var intA: Int = 0
var intIndex: Int = 0


class MapController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    let initialLocation = CLLocationCoordinate2D(latitude: 20.65, longitude: -103.38)
    
    let initialLocation1 = CLLocationCoordinate2D(latitude: 21.282778, longitude: -100.829444)
    
    
    let regionRadius: CLLocationDistance = 1000
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        print("hola")
        print(intA)
        print(intIndex)
        
        switch intA{
                case 3:
                    let location = CLLocationCoordinate2D(
                        latitude: 20.654285,
                        longitude: -103.3939437
                    )
                    // 2
                    let span = MKCoordinateSpanMake(0.05, 0.05)
                    let region = MKCoordinateRegion(center: location, span: span)
                    mapView.setRegion(region, animated: true)
                    
                    //3
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = location
                    annotation.title = "Expo Guadalajara"
                    annotation.subtitle = "Guadalajara"
                    mapView.addAnnotation(annotation)
                    
                    
                    // AQUI CAMBIAMOS DE SWITCH
                    
                    switch intIndex {
                        
                    case 0:
                        // Hotel Real Inn
                        let location = CLLocationCoordinate2D(
                            latitude: 20.65567,
                            longitude: -103.39143
                        )
                        // 2
                        let span = MKCoordinateSpanMake(0.05, 0.05)
                        let region = MKCoordinateRegion(center: location, span: span)
                        mapView.setRegion(region, animated: true)
                        
                        //3
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = location
                        annotation.title = "Real Inn"
                        annotation.subtitle = "Guadalajara"
                        mapView.addAnnotation(annotation)

                        
                        break
                    case 1:
                        // Real Ibis
                        let location = CLLocationCoordinate2D(
                            latitude: 20.66090,
                            longitude: -103.38107
                        )
                        // 2
                        let span = MKCoordinateSpanMake(0.05, 0.05)
                        let region = MKCoordinateRegion(center: location, span: span)
                        mapView.setRegion(region, animated: true)
                        
                        //3
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = location
                        annotation.title = "Ibis Hotel"
                        annotation.subtitle = "Guadalajara"
                        mapView.addAnnotation(annotation)
                        
                        
                        break
                    case 2:
                        // Starbucks
                        let location = CLLocationCoordinate2D(
                            latitude: 20.65500,
                            longitude: -103.40040
                        )
                        // 2
                        let span = MKCoordinateSpanMake(0.05, 0.05)
                        let region = MKCoordinateRegion(center: location, span: span)
                        mapView.setRegion(region, animated: true)
                        
                        //3
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = location
                        annotation.title = "Starbucks"
                        annotation.subtitle = "Guadalajara"
                        mapView.addAnnotation(annotation)
                        
                        
                        break
                    case 3:
                        // papas
                        let location = CLLocationCoordinate2D(
                            latitude: 20.66081,
                            longitude: -103.39582
                        )
                        // 2
                        let span = MKCoordinateSpanMake(0.05, 0.05)
                        let region = MKCoordinateRegion(center: location, span: span)
                        mapView.setRegion(region, animated: true)
                        
                        //3
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = location
                        annotation.title = "Papas Ricas"
                        annotation.subtitle = "Guadalajara"
                        mapView.addAnnotation(annotation)
                        
                        break
                    case 4:
                        // Estancia Gaucha
                        let location = CLLocationCoordinate2D(
                            latitude: 20.66661,
                            longitude: -103.38744
                        )
                        // 2
                        let span = MKCoordinateSpanMake(0.05, 0.05)
                        let region = MKCoordinateRegion(center: location, span: span)
                        mapView.setRegion(region, animated: true)
                        
                        //3
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = location
                        annotation.title = "Starbucks"
                        annotation.subtitle = "Guadalajara"
                        mapView.addAnnotation(annotation)
                        
                        break
                    default:
                        break
                        
                        
                        }
                case 4:
                    let location = CLLocationCoordinate2D(
                        latitude: 20.654285,
                        longitude: -103.3939437
                    )
                    // 2
                    let span = MKCoordinateSpanMake(0.05, 0.05)
                    let region = MKCoordinateRegion(center: location, span: span)
                    mapView.setRegion(region, animated: true)
                    
                    //3
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = location
                    annotation.title = "Hackton AT&T"
                    annotation.subtitle = "Guadalajara"
                    mapView.addAnnotation(annotation)
            
        default:
            break

        // Do any additional setup after loading the view.
        }}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
