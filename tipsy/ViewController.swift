//
//  ViewController.swift
//  tipsy
//
//  Created by Katie Stutts on 8/21/20.
//  Copyright © 2020 Katie Stutts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        // this dismisses the keyboard on tap
        // anywhere in the main view
        view.endEditing(true)
    }
    
    // anytime the user taps on the bill field, calculateTip
    // function will run
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        // ?? means everything to the left of the question mark
        // if its not valid, set to 0
        let bill = Double(billField.text!) ?? 0
        
        // calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

