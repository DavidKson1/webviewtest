//
//  WebViewViewController.swift
//  webviewtest
//
//  Created by Nicklas Gilbertsson on 2018-07-31.
//  Copyright © 2018 David Karlsson. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.datadavid.se")
        webView.load(URLRequest(url: url!))

    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
