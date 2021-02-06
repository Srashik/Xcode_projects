//
//  ViewController.swift
//  Prework
//
//  Created by Shehrebanu Rashik on 2/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
  
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = tip + bill
        
        //Update tip amount label
        TipAmountLabel.text = String(format: "$%.2f",tip)
        //Update total amount
        
        totalLabel.text = String(format: "$%.2f",total)
        
        
    }
    
}

