//
//  DetailViewController.swift
//  First Year App
//
//  Created by Nicholas Seale on 2015-03-13.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var RestaurantNameDetail: UILabel!
    @IBOutlet weak var RestaurantLocationDetail: UILabel!
    @IBOutlet weak var monHoursDetail: UILabel!
    @IBOutlet weak var tuesHoursDetail: UILabel!
    @IBOutlet weak var wedHoursDetail: UILabel!
    @IBOutlet weak var thursHoursDetail: UILabel!
    @IBOutlet weak var friHoursDetail: UILabel!
    @IBOutlet weak var satHoursDetail: UILabel!
    @IBOutlet weak var sunHoursDetail: UILabel!
    @IBOutlet weak var myDetailedImageView: UIImageView!

    var restaurantNameString:String?
    var restaurantLocationString:String?
    var monHoursString:String?
    var tuesHoursString:String?
    var wedHoursString:String?
    var thursHoursString:String?
    var friHoursString:String?
    var SatHoursString:String?
    var SunHoursString:String?
    var myDetailedimageName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.RestaurantNameDetail.text = restaurantNameString
        self.RestaurantLocationDetail.text = restaurantLocationString
        self.monHoursDetail.text = monHoursString
        self.tuesHoursDetail.text = tuesHoursString
        self.wedHoursDetail.text = wedHoursString
        self.thursHoursDetail.text = thursHoursString
        self.friHoursDetail.text = friHoursString
        self.satHoursDetail.text = SatHoursString
        self.sunHoursDetail.text = SunHoursString
        self.myDetailedImageView.image = UIImage(named: myDetailedimageName!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
