//
//  ViewController.swift
//  Prework
//
//  Created by Meredith Montgomery on 1/20/22.
//  Copyright © 2022 Jake Montgomery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    // add slider functionality, when the user selects a tip amount it changes the color of that segment
    @IBAction func slidingTipController(_ sender: Any) {
        switch tipControl.selectedSegmentIndex {
        case 0:
            tipControl.backgroundColor = .white
        case 1:
            tipControl.backgroundColor = .white
        case 2:
            tipControl.backgroundColor = .white
        default:
            break
        }
    }
    
}

