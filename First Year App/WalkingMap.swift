//
//  WalkingMap.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-11.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class WalkingMap: UIViewController {
    
    
    @IBOutlet var Webviewer: UIWebView!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    var URLPath = "http://tw80000.github.io/app/walkingmap"
    
    
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
    
    func webViewDidStartLoad (_:UIWebView) {
            activity.startAnimating()
    }
    
    func webViewDidFinishLoad (_:UIWebView) {
           activity.stopAnimating()
    }
    
    
}