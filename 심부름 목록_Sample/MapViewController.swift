//
//  MapViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi010 on 2017. 8. 8..
//  Copyright © 2017년 연습용. All rights reserved.
//  내 위치를 계산해서 나타내고, 심부름 위치를 설정하여 핀으로 꼽을 수 있습니다.

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var lblLocationInfo1: UILabel!
    @IBOutlet weak var lblLocationInfo2: UILabel!
    
    let locationManager = CLLocationManager()
    
    //맵뷰 보일 때 동작하는 것
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLocationInfo1.text = ""
        lblLocationInfo2.text = ""
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true
        
        //심부름1
        setAnnotation(latitude: 37.5863660, longitude: 127.0289090, delta: 1, title: "안암역", subtitle: "서울 성북구 안암동", tasktitle: "별 일:", taskdetail: "현금 만원만 인출해주기")
        
        //심부름2
        setAnnotation(latitude: 37.5926340, longitude: 127.0249460, delta: 1, title: "화정체육관", subtitle: "서울 성북구 안암동", tasktitle: "별 일:", taskdetail: "피트니스 대신 연장해주기")
        
        //심부름3
        setAnnotation(latitude: 37.5830406, longitude: 127.02917379999997, delta: 1, title: "버거킹", subtitle: "서울 성북구 안암동 안암로 73", tasktitle: "별 일:", taskdetail: "버거킹에서 콰트로치즈와퍼 포장")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goLocation(latitude latitudeValue: CLLocationDegrees, longitude longitudeVale : CLLocationDegrees, delta span : Double) -> CLLocationCoordinate2D {
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, longitudeVale)
        let spanValue = MKCoordinateSpanMake(span, span)
        let pRegion = MKCoordinateRegionMake(pLocation, spanValue)
        myMap.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    func setAnnotation(latitude latitudeValue: CLLocationDegrees, longitude longitudeValue : CLLocationDegrees, delta span : Double, title strTitle: String, subtitle strsubtitle:String, tasktitle strtasktitle: String, taskdetail strtaskdetail: String){
        
        let annotation = CustomPointAnnotation() //MKPointAnnotation() 클래스 새로 만들어서 대체함
        annotation.coordinate = goLocation(latitude: latitudeValue, longitude: longitudeValue, delta: span) //golocation 왜 안쓰이지?
        annotation.title = strTitle
        annotation.subtitle = strsubtitle
        annotation.imageName = "Vector" //이미지 추가 - 작동안됨
        //self.lblLocationInfo1.text = strtasktitle
        //self.lblLocationInfo2.text = strtaskdetail

        myMap.addAnnotation(annotation)
    }
    
    
    //이미지를 위한 펑션 추가해야됨 안되서 다 지움
    
    //핀이 선택되었을 때 하단의 라벨 : 심부름 이름과 내용 변경 - 나중에
//    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
//        
//        if let annotation = view.annotation as? CustomPointAnnotation {
//            self.lblLocationInfo1.text = annotation.tasktitle
//            self.lblLocationInfo2.text = annotation.taskdetail
//        }
//    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pLocation = locations.last
        goLocation(latitude: (pLocation?.coordinate.latitude)!, longitude: (pLocation?.coordinate.longitude)!, delta: 0.01)
        //atitude latitudeValue: CLLocationDegrees, longitude longitudeVale : CLLocationDegrees, delta span : Double
    
    
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
    
            /*self.lblLocationInfo1.text = "현재 위치"
            self.lblLocationInfo2.text = address*/
    
        })
    
        locationManager.stopUpdatingLocation()
    
    }
}

//커스텀 핀을 위한 클래스 하나 더 추가
class CustomPointAnnotation: MKPointAnnotation {
    var imageName: String! //이 변수 필요
}
