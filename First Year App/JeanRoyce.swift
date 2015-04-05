//
//  JeanRoyce.swift
//  First Year App
//
//  Created by Alex Seppala on 2015-03-18.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class JeanRoyce: UIViewController {
 
    @IBOutlet var JeanRoyceWeb: UIWebView!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!

    var URLPath = "http://troywolters.com/app/menu/JeanRoyce"
    
    
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
        JeanRoyceWeb.loadRequest(request)
    }

    func webViewDidStartLoad (_:UIWebView) {
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad (_:UIWebView) {
        activity.stopAnimating()
    }
    

}