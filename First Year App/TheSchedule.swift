//
//  TheSchedule.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-13.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class TheSchedule: UIViewController {
    
    @IBOutlet var ScheduleWebview: UIWebView!
    
    var URLPath = "http://troywolters.com/app/schedule/"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadAddressURL(){
        let requestURL = NSURL(string:URLPath)
        let request = NSURLRequest(URL: requestURL!)
        ScheduleWebview.loadRequest(request)
    }
    
}