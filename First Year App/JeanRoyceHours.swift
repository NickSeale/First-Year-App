//
//  JeanRoyceHours.swift
//  First Year App
//
//  Created by Kathryn Ohashi on 2015-04-02.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class JeanRoyceHours: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!


    override func viewDidLoad() {
        super.viewDidLoad()
   scroll.contentSize.height = 350

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
