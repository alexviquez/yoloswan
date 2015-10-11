//
//  MapController.swift
//  Yoloswan
//
//  Created by Christian de J Moreno Marín on 11/10/15.
//  Copyright © 2015 Alejandro Viquez. All rights reserved.
//

import UIKit
import MapKit


class MapController: UIViewController {
    var intA: Int = 0
    var intIndex: Int = 0
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(intA)
        
        centerMapOnLocation(initialLocation)

        // Do any additional setup after loading the view.
    }
    

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
