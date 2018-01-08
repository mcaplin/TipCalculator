//
//  SettingsViewController.swift
//  tip calculator
//
//  Created by Michelle Caplin on 1/4/18.
//  Copyright © 2018 Michelle Caplin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let defaults = UserDefaults.standard
        //let tipPercentages = [0.10, 0.15, 0.20, 0.0]
        //defaults.set(0.1, forKey: "field1")
        //defaults.set(0.15, forKey: "field2")
        //defaults.set(0.2, forKey: "field3")
        defaults.synchronize()
        
        /*let f1 = String(format: "%.0f", 100 * defaults.double(forKey: "field1"))
        field1.text = f1*/
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        field1.becomeFirstResponder()
        let defaults = UserDefaults.standard
        let f1 = String(format: "%.0f", 100 * defaults.double(forKey: "field1"))
        field1.text = f1
        
        let f2 = String(format: "%.0f", 100 * defaults.double(forKey: "field2"))
        field2.text = f2
        
        let f3 = String(format: "%.0f", 100 * defaults.double(forKey: "field3"))
        field3.text = f3
    }

    
    @IBAction func f1Changed(_ sender: Any) {
        let defaults = UserDefaults.standard
        let newNum = Double(field1.text!) ?? 0
        let n = newNum * 0.01
        defaults.set(n, forKey: "field1")
        defaults.synchronize()
    }
    
    @IBAction func f2Changed(_ sender: Any) {
        let defaults = UserDefaults.standard
        let newNum = Double(field2.text!) ?? 0
        let n = newNum * 0.01
        defaults.set(n, forKey: "field2")
        defaults.synchronize()
    }
    
    @IBAction func f3Changed(_ sender: Any) {
        let defaults = UserDefaults.standard
        let newNum = Double(field3.text!) ?? 0
        let n = newNum * 0.01
        defaults.set(n, forKey: "field3")
        defaults.synchronize()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
