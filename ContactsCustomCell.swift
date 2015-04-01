//
//  ContactsCustomCell.swift
//  First Year App
//
//  Created by 李梓桐 on 2015-03-30.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class ContactsCustomCell: UITableViewCell {

    
    @IBOutlet var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UITextField!
   // @IBOutlet var rightLabel: UILabel!
    
    /*
    init(style:UITableViewCellStyle, reuseIdentifier:String){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //Initialization code
        
    }

*/
    /*
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setContactsCell(leftLabelText:String, rightLabelText:String)
    {
        self.leftLabel.text = leftLabelText
        self.rightLabel.text = rightLabelText
    }


}
