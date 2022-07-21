//
//  ViewController.swift
//  TipCalculatorPrework
//
//  Created by Amiyah Richardson on 7/21/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControlSlide: UISegmentedControl!
    @IBOutlet weak var totalTiip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //this gets bill amt from the txt field
        let bill = Double(billAmount.text!) ?? 0
        //this gets the total by multiplying tip by the percents
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = (bill * tipPercentages[tipControlSlide.selectedSegmentIndex])
        let total = bill + tip
        
        //this updates the tip amt label
        tipAmount.text = String(format: "$%.2f", tip)
        
        //this updates the total amount label
        totalTiip.text = String(format: "$%.2f", total)

    }
   
}

