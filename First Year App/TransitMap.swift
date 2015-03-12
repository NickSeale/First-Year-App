//
//  TransitMap.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-11.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class TransitMap: UIViewController {
    
    
    @IBOutlet var Webviewer: UIWebView!
    
    
    var URLPath = "http://tw80000.github.io/app/transitmap"
    
    
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
        Webviewer.loadRequest(request)
    }
    
}