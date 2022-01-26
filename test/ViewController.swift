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
    
    //Default tip percentages
    var tipPercentages = [0.15, 0.18, 0.20];
    
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        self.title = "Tip Calculator";
        
    }
  
    
    /*When screen appears, update the percentage titles for corresponding tipControl segments, converts the corresponding UserDefault data to a double, then divides for the percentage
     */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View appeared or something")
        
        tipControl.setTitle("\(UserDefaults.standard.double(forKey: "Tip1"))%", forSegmentAt: 0)
        tipPercentages[0] = UserDefaults.standard.double(forKey: "Tip1")/100;
        
        
        tipControl.setTitle("\(UserDefaults.standard.double(forKey: "Tip2"))%", forSegmentAt: 1)
        tipPercentages[1] = UserDefaults.standard.double(forKey: "Tip2")/100;
        
        
        tipControl.setTitle("\(UserDefaults.standard.double(forKey: "Tip3"))%", forSegmentAt: 2)
        tipPercentages[2] = UserDefaults.standard.double(forKey: "Tip3")/100;
        
    }
    
    
//When segment is changed, calculates the correct tip, then updates Total and Tip amounts
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0;
        
        let tip =  bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill+tip;
        
        tipAmountLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
        //this will be used purely to see if uploads work correctly
    }
    
    
    
}

