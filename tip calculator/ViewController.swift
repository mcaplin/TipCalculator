//
//  ViewController.swift
//  tip calculator
//
//  Created by Michelle Caplin on 1/4/18.
//  Copyright © 2018 Michelle Caplin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTip: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        
        //keyboard
        billField.becomeFirstResponder()
        
        let defaults = UserDefaults.standard
        
        let bill = String(format: "%.2f", defaults.double(forKey: "bill"))
        if (bill == "0.00") {
            billField.text = ""
        }
        else {
            billField.text = bill
        }
        
        let custom = String(format: "%.0f", defaults.double(forKey: "custom"))
        if (custom == "0") {
            customTip.text = ""
        }
        else {
            customTip.text = custom
        }
        
        let split = String(format: "%.0f", defaults.double(forKey: "split"))
        if (split == "0") {
            splitField.text = ""
        }
        else {
            splitField.text = split
        }
        
        
        let f1 = String(format: "%.0f", 100 * defaults.double(forKey: "field1"))
        if (f1 == "0") {
            defaults.set(0.1, forKey: "field1")
        }
        
        let f2 = String(format: "%.0f", 100 * defaults.double(forKey: "field2"))
        if (f2 == "0") {
            defaults.set(0.15, forKey: "field2")
        }
        
        let f3 = String(format: "%.0f", 100 * defaults.double(forKey: "field3"))
        if (f3 == "0") {
            defaults.set(0.2, forKey: "field3")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
        let defaults = UserDefaults.standard
        let f1 = String(format: "%.0f", 100 * defaults.double(forKey: "field1"))
        tipControl.setTitle(f1 + "%", forSegmentAt: 0)
        
        let f2 = String(format: "%.0f", 100 * defaults.double(forKey: "field2"))
        tipControl.setTitle(f2 + "%", forSegmentAt: 1)
        
        let f3 = String(format: "%.0f", 100 * defaults.double(forKey: "field3"))
        tipControl.setTitle(f3 + "%", forSegmentAt: 2)
        calculateTip(Any.self)
    }


    @IBAction func updateTipPercentage(_ sender: Any) {
        calculateTip(sender)
    }
    
    @IBAction func updateSplit(_ sender: Any) {
        calculateTip(sender)
    }
    //let defaults = UserDefaults.standard
    //let tipPercentages = [0.10, 0.15, 0.20, 0.0]
    //defaults
    //defaults.synchronize()
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        let f1 = defaults.double(forKey: "field1")
        let f2 = defaults.double(forKey: "field2")
        let f3 = defaults.double(forKey: "field3")

        
        let custom = Double(customTip.text!) ?? 0
        let customP = custom * 0.01
        
        defaults.set(custom, forKey: "custom")
        
        //let tipPercentages = [0.10, 0.15, 0.20, customP]
        //asdflet defaults = UserDefaults.standard
        //asdflet field1 = defaults.double(forKey: "field1")
        
        let tipPercentages = [f1, f2, f3, customP]
        //defaults.set(tipPercentages, forKey: "test")
        //defaults.synchronize()
        var splitNum = Int(splitField.text!) ?? 1
        if(splitNum < 1) {
            splitNum = 1
        }
        
        defaults.set(splitNum, forKey: "split")
        //let splitNum = Double(splitField.text!) ?? 1
        
        let bill = Double(billField.text!) ?? 0
        
        defaults.set(bill, forKey: "bill")
        
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex])
        let total = tip + bill
        
        
 

        tipLabel.text = String(format: "$%.2f", tip/Double(splitNum))
        totalLabel.text = String(format: "$%.2f", total/Double(splitNum))
    }
}

