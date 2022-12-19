//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    var tipsyBrain = TipsyBrain()
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        tipsyBrain.updateBill(string: billTextField.text)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        tipsyBrain.updateProcent(string: sender.currentTitle)


    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = tipsyBrain.updateSplit(double: sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        tipsyBrain.updateValue()
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVc = segue.destination as! ResultsViewController
            destinationVc.split = tipsyBrain.p
            destinationVc.people = tipsyBrain.intSplit
            destinationVc.total = tipsyBrain.value!
        }
        
    }
}

