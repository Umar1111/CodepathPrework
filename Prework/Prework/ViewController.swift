//
//  ViewController.swift
//  Prework
//
//  Created by Sohail Arshad on 8/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        // get total tip
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amount
        
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
        
        
    }
    

}

