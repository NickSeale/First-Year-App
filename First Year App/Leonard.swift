//
//  Leonard.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-18.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class Leonard: UIViewController {
    
    @IBOutlet var LeonardWeb: UIWebView!
    
    var URLPath = "http://troywolters.com/app/menu/Leonard"
    
    
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
        LeonardWeb.loadRequest(request)
    }
    
}