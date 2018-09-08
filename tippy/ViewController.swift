//
//  ViewController.swift
//  tippy
//
//  Created by Joseantonio Maciel on 9/7/18.
//  Copyright © 2018 Joseantonio Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.18, 0.20, 0.25]
        
        let bill = Double( BillField.text!) ?? 0
        
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        TipLabel.text = String (format:"$%.2f", tip)
        TotalLabel.text = String (format:"$%.2f", total)
    }
}

