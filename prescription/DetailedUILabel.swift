//
//  DetailedUILabel.swift
//  prescription
//
//  Created by LeoSU on 2015/4/24.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

import UIKit
import MapKit

class DetailedUILabel: UIViewController {
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet var mapView:MKMapView!
    var mylocation:String = "苗栗縣竹南鎮和平街59號"
    var myname:String = "瑞士藥局"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "我們致力於提供您最棒的服務！\n免費承接連續處方箋！\n全台各醫院、診所、衛生所\n及牙科處方箋皆可領取。"
        self.label2.text = "LINE ID: hasqw6\n\n電話: 037 - 552708\n\n傳真: 037 - 464529\n\n地址: 苗栗縣竹南鎮和平街59號"
        
        //Map annotation
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(mylocation,
            completionHandler: { placemarks,
            error in
            if error != nil {
                println(error)
                return
            }
            if placemarks != nil && placemarks.count > 0 {
                let placemark = placemarks[0] as! CLPlacemark
                //Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.myname
                annotation.subtitle = "苗栗縣竹南鎮和平街59號"
                annotation.coordinate = placemark.location.coordinate
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
                }
            })
        }
        // Do any additional setup after loading the view.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
