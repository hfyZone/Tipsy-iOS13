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
    @IBOutlet weak var splitNumberLabel: UIStackView!

    @IBOutlet weak var stepValueLabel: UILabel!
    var bill = Bill()

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true

        let tipPctStr = sender.currentTitle!
        let tipPctNum = Double(String(tipPctStr.dropLast()))! / 100
        bill.tipPct = tipPctNum
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let stepperValue = String(format: "%.0f", sender.value)
        stepValueLabel.text = stepperValue
        bill.split = sender.value

    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        bill.total = Double(billTextField.text!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = String(format: "%.2f", bill.count())
            destinationVC.settings =
            "Split between \(Int(bill.split!)) people, with \(String(format: "%.0f", bill.tipPct! * 100))% tip."
        }

    }

}
