//
//  YourProjectViewController.swift
//  webviewtest
//
//  Created by Nicklas Gilbertsson on 2018-08-01.
//  Copyright © 2018 David Karlsson. All rights reserved.
//

import UIKit

class YourProjectViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var myPicker: UIPickerView!

    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myPicker.delegate = self
        self.myPicker.dataSource = self
        
        pickerData = ["5-10 000kr", "10-15 000kr", "15-20 000kr", "20-25 000kr", "25-30 000kr", "30 000kr +"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
