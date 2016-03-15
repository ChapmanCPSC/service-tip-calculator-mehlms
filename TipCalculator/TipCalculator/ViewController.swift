//
//  ViewController.swift
//  TipCalculator
//
//  Created by Matthew Helms on 3/9/16.
//  Copyright © 2016 Matthew Helms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalText: UITextField!
    @IBOutlet weak var ratingText: UITextField!
    @IBOutlet weak var outputText: UILabel!
    
    @IBAction func totalChanged(sender: AnyObject) {
        updateTip()
    }
    
    @IBAction func ratingChanged(sender: AnyObject) {
        updateTip()
    }
    
    func updateTip() {
        let total = Float(totalText.text!)
        let rating = Int(ratingText.text!)
        var percent : Float = 0.0
        
        if rating == nil {
            outputText.text = "TIP : $0.00"
            return
        } else if rating >= 10 {
            percent = 0.25
        } else if rating >= 8 {
            percent = 0.2
        } else if rating >= 6 {
            percent = 0.15
        } else if rating >= 4 {
            percent = 0.13
        } else {
            percent = 0.1
        }
        
        outputText.text = "TIP : $" + String(total! * percent)
    }
}

