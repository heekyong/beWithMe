//
//  MapViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi010 on 2017. 8. 8..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var lblLocationInfo1: UILabel!
    @IBOutlet weak var lblLocationInfo2: UILabel!
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLocationInfo1.text = ""
        lblLocationInfo2.text = ""
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goLocation(latitude latitudeValue: CLLocationDegrees, longitude longitudeVale : CLLocationDegrees, delta span : Double) {
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, longitudeVale)
        let spanValue = MKCoordinateSpanMake(span, span)
        let pRegion = MKCoordinateRegionMake(pLocation, spanValue)
        myMap.setRegion(pRegion, animated: true)
    }
    
    func setAnnotation(latitude latitudeValue: CLLocationDegrees, longitude longitudeValue : CLLocationDegrees, delta span : Double, title strTitle: String, subtitle strsubtitle:String){

    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pLocation = locations.last
        goLocation(latitude: (pLocation?.coordinate.latitude)!, longitude: (pLocation?.coordinate.longitude)!, delta: 0.01)
    
    
    
        CLGeocoder().reverseGeocodeLocation(pLocation!, completionHandler: {
            (placemarks, error) -> Void in
            let pm = placemarks!.first
            let country = pm!.country
            var address:String = country!
            if pm!.locality != nil {
                address += " "
                address += pm!.locality!
            }
            if pm!.thoroughfare != nil {
                address += " "
            address += pm!.thoroughfare!
            }
    
            self.lblLocationInfo1.text = "현재 위치"
            self.lblLocationInfo2.text = address
    
        })
    
        locationManager.stopUpdatingLocation()
    
    }
    @IBAction func sgChangeLocation(_ sender: UISegmentedControl) {
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
