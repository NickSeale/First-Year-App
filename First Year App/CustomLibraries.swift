//
//  CustomLibraries.swift
//  First Year App
//
//  Created by Kathryn Ohashi on 2015-03-24.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class CustomLibraries: UITableViewCell {

    @IBOutlet weak var libraryName: UILabel!
    @IBOutlet weak var libraryLocation: UILabel!
    @IBOutlet weak var monLibraryHours: UILabel!
    @IBOutlet weak var tuesLibraryHours: UILabel!
    @IBOutlet weak var wedLibraryHours: UILabel!
    @IBOutlet weak var thursLibraryHours: UILabel!
    @IBOutlet weak var friLibraryHours: UILabel!
    @IBOutlet weak var satLibraryHours: UILabel!
    @IBOutlet weak var sunLibraryHours: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLibraryCell(libraryNameText:String, libraryLocationText:String, monLibraryHoursText:String, tuesLibraryHoursText:String, wedLibraryHoursText:String, thursLibraryHoursText:String, friLibraryHoursText:String, satLibraryHoursText:String, sunLibraryHoursText:String)
    {
        self.libraryName.text = libraryNameText
        self.libraryLocation.text = libraryLocationText
        self.monLibraryHours.text = monLibraryHoursText
        self.tuesLibraryHours.text = tuesLibraryHoursText
        self.wedLibraryHours.text = wedLibraryHoursText
        self.thursLibraryHours.text = thursLibraryHoursText
        self.friLibraryHours.text = friLibraryHoursText
        self.satLibraryHours.text = satLibraryHoursText
        self.sunLibraryHours.text = sunLibraryHoursText
        
    }
}
