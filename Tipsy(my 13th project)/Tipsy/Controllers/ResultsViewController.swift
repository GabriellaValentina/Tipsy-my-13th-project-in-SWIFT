//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gabriela Valentina on 19.12.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var total: Float?
    var people:Int?
    var split:String?
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        settingsLabel.text = "Split between \(people!) people, with \(split!) tip."
        totalLabel.text = "\(total!)"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    
}
