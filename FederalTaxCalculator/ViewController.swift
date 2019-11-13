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
        var taxOwing = Double()
        switch grossAnnualIncomeAsDouble {
        case 0...47630:
            taxOwing = grossAnnualIncomeAsDouble * 0.15
        case 47630.01...95259:
            taxOwing = (grossAnnualIncomeAsDouble - 47630) * 0.205 + 47630 * 0.15
        case 95259.01...147667:
            taxOwing = (grossAnnualIncomeAsDouble - 95259) * 0.26 + 47629 * 0.205 + 47630 * 0.15
        case 147667.01...201731:
            taxOwing = (grossAnnualIncomeAsDouble - 147667) * 0.29 + 52408 * 0.26 + 47629 * 0.205 + 47630 * 0.15
        default:
            taxOwing = (grossAnnualIncomeAsDouble - 210371) * 0.33 + 47630 * 0.15 + 47629 * 0.205 + 52408 * 0.26 + 62704 * 0.29
        }
        var effectiveTaxRate = Double()
        effectiveTaxRate = taxOwing/grossAnnualIncomeAsDouble
        let effectiveTaxRateInPercentage = effectiveTaxRate * 100
        // 4. Send results to the labels
        
        outputTaxesOwing .text="\(userNameAsString) your federal tax owing is $\(taxOwing)."
        outPutEffectiveTaxRate .text="Your effective tax rate is \(effectiveTaxRateInPercentage)%"
    }
    
    

}
