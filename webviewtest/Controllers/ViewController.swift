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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTapped(gesture:)))
        webViewImage.addGestureRecognizer(tapGesture)
        webViewImage.isUserInteractionEnabled = true
      
    }

    @objc func imageTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            performSegue(withIdentifier: "dataDavid", sender: nil)
        }
    }


}


















