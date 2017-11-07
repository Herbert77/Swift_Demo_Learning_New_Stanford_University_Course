//
//  ViewController.swift
//  Calculator_Demo
//
//  Created by Herbert Hu on 2017/11/7.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var userIsInTheMiddleOfTyping = false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func digitButtonClicked(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue : Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            
            switch mathematicalSymbol {
            case "π":
//                display.text = String(Double.pi)
                displayValue = Double.pi
            case "√":
//                let operand = Double(display.text!)!
//                display.text = String(sqrt(operand))
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}























