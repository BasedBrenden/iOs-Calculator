//
//  ViewController.swift
//  test
//
//  Created by Brenden Thomas on 1/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator";
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View appeared or something")
        //let testTip1 = UserDefaults.standard.string(forKey: "Tip1")
        tipControl.setTitle("15%", forSegmentAt: 0)
        //let testTip2 = UserDefaults.standard.string(forKey: "Tip2")
        tipControl.setTitle("18%", forSegmentAt: 1)
        //let testTip3 = UserDefaults.standard.string(forKey: "Tip3")
        tipControl.setTitle("20%", forSegmentAt: 2)
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0;
        let tipPercentages = [0.15, 0.18, 0.20];
        let tip =  bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill+tip;
        
        tipAmountLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
        //this will be used purely to see if uploads work correctly
    }
    
    
    
}

