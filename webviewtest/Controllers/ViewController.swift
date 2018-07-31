//
//  ViewController.swift
//  webviewtest
//
//  Created by David Karlsson on 2018-07-31.
//  Copyright © 2018 David Karlsson. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webViewImage: UIImageView!
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let WebviewtapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.webViewImageTapped(gesture:)))
        let contactTapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.contactImageTapped(gesture:)))
        
        webViewImage.addGestureRecognizer(WebviewtapGesture)
        contactImage.addGestureRecognizer(contactTapGesture)
        webViewImage.isUserInteractionEnabled = true
        contactImage.isUserInteractionEnabled = true
        
        
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    @objc func webViewImageTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            performSegue(withIdentifier: "dataDavid", sender: nil)
        }
    }
    
    @objc func contactImageTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            let email = "info@datadavid.se"
            if let url = URL(string: "mailto:\(email)") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
    }
}


















