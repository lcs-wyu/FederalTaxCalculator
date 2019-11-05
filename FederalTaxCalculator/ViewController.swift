//
//  ViewController.swift
//  FederalTaxCalculator
//
//  Created by Yu, Boning on 2019-11-01.
//  Copyright © 2019 Wellesley Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//These are the outlets that connect the textfields to the view
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var grossAnnualIncome: UITextField!
    
    @IBOutlet weak var outputTaxesOwing: UILabel!
    
    @IBOutlet weak var outPutEffectiveTaxRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Where should we start?
        
    }
    
    @IBAction func calculateTaxOwing(_ sender: Any) {
        
        // 1. Get the values from the user as String
        // Use guard let...
        
        guard let userNameAsString = name.text
            else {
                outputTaxesOwing .text="Please enter a proper name."
            return
        }
        
        // 2. Change the value for gross income into a Double
        // Use guard let
        
        guard let grossAnnualIncomeAsString = grossAnnualIncome.text
            else {
                outputTaxesOwing.text="Please enter a gross annual income"
            return
        }
        
        guard let grossAnnualIncomeAsDouble = Double (grossAnnualIncomeAsString)
            
            else
        {outputTaxesOwing.text="Please enter a numeric gross annual income"
            return
            
        }
        
        // 3. Switch based on the income bracket
        
        // 4. Send results to the labels
        
        
        
    }
    
}


