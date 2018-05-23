//
//  ViewController.swift
//  YNAB
//
//  Created by Adam Bowles on 2018-05-23.
//  Copyright © 2018 Adam Bowles. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61"
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://app.youneedabudget.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
