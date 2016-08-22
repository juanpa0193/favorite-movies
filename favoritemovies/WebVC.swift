//
//  WebVC.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/22/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController {
    
    
    @IBOutlet weak var container: UIView!
    
    var webView: UIWebView!
    var url: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView()
        container.addSubview(webView)
        
        self.automaticallyAdjustsScrollViewInsets = false //



    }
    
    override func viewDidAppear(animated: Bool) {
        
        let frame = CGRect(x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        webView.frame = frame
        
        loadRequest(url)

    }

    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        
        
    }

    


}
