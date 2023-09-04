//
//  ViewController.swift
//  Locations
//
//  Created by Jamaaldeen Opasina on 04/09/2023.
//

import UIKit
import CoreLocation
class currentLocation: UIViewController,CLLocationManagerDelegate {
    
        //MARK: -IBOutlets
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel:UILabel!
    @IBOutlet weak var longitudeLabel:UILabel!
    @IBOutlet weak var addressLabel:UILabel!
    @IBOutlet weak var tagButton:UIButton!
    @IBOutlet weak var getButton: UIButton!

    
        //MARK: - Properties
    let locationManager = CLLocationManager()// assignng cllocation manager object to location manager property
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
        //MARK: - Actions
    @IBAction func getLocation(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
    }

}

