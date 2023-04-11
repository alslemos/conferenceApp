//
//  NationalParkLocation.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 11/04/23.
//

import Foundation
import CoreLocation

struct ParkLocation: Codable, Identifiable {
    var id = UUID()
    var latitude, longitude: Double
    //Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
