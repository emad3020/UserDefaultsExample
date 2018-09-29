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
    
    
    
    @IBAction func increaseCounterBtnPressed(_ sender : Any) {
        initialValue += 1
        
        counterLBL.text = "\(initialValue)"
        
        defaults.set(initialValue, forKey: COUNTER_KEY)
        
        print("counter in defaults",defaults.value(forKey: COUNTER_KEY) as Any)
        
    }


}

