//
//  CounterVC.swift
//  CounterVC
//
//  Created by Bill Martensson on 2021-09-20.
//

import UIKit

class CounterVC: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var minusButton: UIButton!
    
    var siffra = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        numberLabel.text = "0"
    }
    
    
    @IBAction func minusClick(_ sender: Any) {
        
        siffra = siffra - 1
        
        if(siffra < 0)
        {
            siffra = 0
        }
        
        if(siffra == 0)
        {
            minusButton.isEnabled = false
        }
        
        numberLabel.text = String(siffra)
    }
    
    
    @IBAction func plusClick(_ sender: Any) {
        
        siffra = siffra + 1
        
        minusButton.isEnabled = true
        
        numberLabel.text = String(siffra)
        
    }
    
    
    @IBAction func resetClick(_ sender: Any) {
        
        siffra = 0
        
        numberLabel.text = String(siffra)
        
        minusButton.isEnabled = false
        
    }
    
    

}
