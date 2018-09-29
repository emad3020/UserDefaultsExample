//
//  ViewController.swift
//  userDefaultExample
//
//  Created by Emad on 9/29/18.
//  Copyright © 2018 Askerlap. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var counterLBL: UILabel!
    @IBOutlet weak var storeDataSwitch: UISwitch!
    
    let defaults = UserDefaults.standard
    
    var initialValue : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        storeDataSwitch.isOn = defaults.value(forKey: SWITCH_STATE_KEY) as? Bool ?? false
        
        initialValue = defaults.value(forKey: COUNTER_KEY) as? Int ?? 0
        counterLBL.text = "\(initialValue)"
    }
    
    @IBAction func increaseCounterBtnPressed(_ sender : Any) {
        initialValue += 1
        
        counterLBL.text = "\(initialValue)"
        
        if storeDataSwitch.isOn {
            defaults.set(initialValue, forKey: COUNTER_KEY)
        }
        
        
    }
    
    
    
    @IBAction func storeDataSwitchChanged(_ sender: Any) {
        
        defaults.set(storeDataSwitch.isOn, forKey: SWITCH_STATE_KEY)
        
        if !storeDataSwitch.isOn {
            defaults.setValue(0, forKey: COUNTER_KEY)
            initialValue = 0
            counterLBL.text = "\(initialValue)"
        }
    }
    

}

