//
//  LibraryCustomCell.swift
//  First Year App
//
//  Created by Kathryn Ohashi on 2015-03-13.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class LibraryCustomCell: UITableViewCell {
    @IBOutlet weak var libraryName: UILabel!
    @IBOutlet weak var libraryLocation: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
