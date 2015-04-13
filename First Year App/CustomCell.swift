//
//  CustomCell.swift
//  First Year App
//
//  Created by Nicholas Seale on 2015-03-12.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCell(restaurantNameText: String, locationNameText: String, imageName: String)
    {
        self.nameLabel.text = restaurantNameText
        self.locationLabel.text = locationNameText
        self.myImageView.image = UIImage(named: imageName)
    }
    

}
