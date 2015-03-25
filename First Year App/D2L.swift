//
//  D2L.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-20.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class D2L: UIViewController {
    
    @IBOutlet var D2LWeb: UIWebView!
    var URLPath = "http://courses.engineering.queensu.ca/"
    
    
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
        D2LWeb.loadRequest(request)
    }
    
}