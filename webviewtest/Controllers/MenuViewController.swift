//
//  MenuViewController.swift
//  webviewtest
//
//  Created by Nicklas Gilbertsson on 2018-07-31.
//  Copyright © 2018 David Karlsson. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let array = ["Om Oss", "Grafisk Design", "Broschyr/Säljblad", "Logo/Visitkort", "Hemsida", "App", "Marknadsföring", "Berätta Om Ditt Projekt"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? menuTableViewCell else { return UITableViewCell() }
        
        cell.myLabel.text = array[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.performSegue(withIdentifier: "about", sender: nil)
        } else if indexPath.row == 1 {
            self.performSegue(withIdentifier: "graphic", sender: nil)
        } else if indexPath.row == 2 {
            self.performSegue(withIdentifier: "brochure", sender: nil)
        } else if indexPath.row == 3 {
            self.performSegue(withIdentifier: "logo", sender: nil)
        } else if indexPath.row == 4 {
            self.performSegue(withIdentifier: "website", sender: nil)
        } else if indexPath.row == 5 {
            self.performSegue(withIdentifier: "app", sender: nil)
        } else if indexPath.row == 6 {
            self.performSegue(withIdentifier: "marketing", sender: nil)
        } else if indexPath.row == 7 {
             self.performSegue(withIdentifier: "youProject", sender: nil)
        }
    }
}
