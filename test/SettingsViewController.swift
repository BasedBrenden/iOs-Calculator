//
//  SettingsViewController.swift
//  test
//
//  Created by Brenden Thomas on 1/23/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1Input: UITextField!
    @IBOutlet weak var tip2Input: UITextField!
    @IBOutlet weak var tip3Input: UITextField!
    
    //let tipSettings = UserDefault.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tip1Change(_ sender: Any) {
        let newAmount:String = tip1Input.text!;
        UserDefaults.standard.setValue(newAmount, forKey:"Tip1");
        //whaaa
    }
    

    @IBAction func tip2Change(_ sender: Any) {
        let newAmount:String = tip2Input.text!;
        UserDefaults.standard.setValue(newAmount, forKey:"Tip2");
    }
    
    
    @IBAction func tip3Change(_ sender: Any) {
        let newAmount:String = tip3Input.text!;
        UserDefaults.standard.setValue(newAmount, forKey: "Tip3");
    }
    
    
    @IBAction func viewModeChange(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
