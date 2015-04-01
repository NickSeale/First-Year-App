//
//  Libraries.swift
//  First Year App
//
//  Created by Nicholas Seale on 2015-03-24.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import Foundation

class Library {
    
    var nameLibrary="name"
    var locationLibrary="noLocation"
    var monHoursLibrary = "NonMon"
    var tuesHoursLibrary = "NonTues"
    var wedHoursLibrary = "NonWed"
    var thursHoursLibrary = "NonThurs"
    var friHoursLibrary = "NonFri"
    var satHoursLibrary = "NonSat"
    var sunHoursLibrary = "NonSun"

    
    init(nameLibrary: String, locationLibrary:String,  monHoursLibrary:String, friHoursLibrary:String, satHoursLibrary:String, sunHoursLibrary:String)
    {
        self.nameLibrary = nameLibrary
        self.locationLibrary = locationLibrary
        self.monHoursLibrary = monHoursLibrary
        self.friHoursLibrary = friHoursLibrary
        self.satHoursLibrary = satHoursLibrary
        self.sunHoursLibrary = sunHoursLibrary
    }
}