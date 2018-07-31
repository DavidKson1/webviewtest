//
//  MenuViewController.swift
//  webviewtest
//
//  Created by Nicklas Gilbertsson on 2018-07-31.
//  Copyright © 2018 David Karlsson. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }



}
