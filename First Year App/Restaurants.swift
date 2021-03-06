//
//  Restaurants.swift
//  First Year App
//
//  Created by Nicholas Seale on 2015-03-12.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import Foundation

class Restaurant
{
    var name="name"
    var location="noLocation"
    var imageName = "blank"
    var monHours = "NonMon"
    var tuesHours = "NonTues"
    var wedHours = "NonWed"
    var thursHours = "NonThurs"
    var friHours = "NonFri"
    var satHours = "NonSat"
    var sunHours = "NonSun"
    
    init(name: String, location:String, imageName:String, monHours:String, tuesHours: String, wedHours:String, thursHours:String, friHours:String, satHours:String, sunHours:String)
    {
        self.name=name
        self.location=location
        self.imageName=imageName
        self.monHours=monHours
        self.tuesHours=tuesHours
        self.wedHours=wedHours
        self.thursHours=thursHours
        self.friHours=friHours
        self.satHours=satHours
        self.sunHours=sunHours
    }

    
}