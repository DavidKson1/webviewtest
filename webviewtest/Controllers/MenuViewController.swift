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

}
