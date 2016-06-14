//
//  ViewController.swift
//  Just the Tip
//
//  Created by Olivia Gregory on 6/14/16.
//  Copyright © 2016 Olivia Gregory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.25]
        
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

