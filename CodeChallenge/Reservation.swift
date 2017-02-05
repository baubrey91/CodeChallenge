//
//  ReservationObject.swift
//  CodeChallenge
//
//  Created by Brandon on 2/3/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation

class Reservation {
    
    var date : String
    var time : String
    var type : String
    var partySize : Int
    var length : Int
    var description: String
    
    init(date : String, time : String, type : String, partySize : Int, length : Int, description: String){
        self.date = date
        self.time = time
        self.type = type
        self.partySize = partySize
        self.length = length
        self.description = description
    }
}
