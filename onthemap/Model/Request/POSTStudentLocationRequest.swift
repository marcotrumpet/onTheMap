//
//  StudentLocation.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


struct StudentLocation: Codable{
    // Singlton Instance to save current Student Location
    static var instance: StudentLocation? = nil
    
    var uniqueKey: String
    var firstName: String
    var lastName: String
    var mapString: String
    var mediaURL: String
    var latitude: Float
    var longitude:Float
}
