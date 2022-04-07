//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var splitValue : Float = 2
    var tip = ""
    
    var brain = Brain()
    

    @IBAction func tipChanged(_ sender: UIButton) {
        updateUI()
        sender.isSelected = true
        switch sender {
        case zeroPctButton:
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case tenPctButton:
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case twentyPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
        default : break
        }
        brain.getDecimalOf(button: sender)
        brain.getTimValueBy(sender.currentTitle)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(sender.value)
        brain.splitValue = Float(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        brain.calculatingBill(billTextField.text)
        performSegue(withIdentifier: "segueToResultVC", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultsViewController
        destination.totalResult = brain.getResult()
        destination.settings = "Split between \(splitNumberLabel.text ?? "0") people, with \(brain.tip) tip"
    }
    
    func updateUI() {
        billTextField.endEditing(true)
    }
    
}

