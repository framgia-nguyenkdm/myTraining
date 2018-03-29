//
//  ViewController.swift
//  Calculator
//
//  Created by khuc.d.m.nguyen on 3/29/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result: Double = 0
    var numb1: Double = 0
    var numb2: Double = 0
    var myOperator: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapResetBtn(_ sender: Any) {
        resetAll()
    }
    @IBAction func tapModBtn(_ sender: Any) {
    }
    @IBAction func tapDevideBtn(_ sender: Any) {
        saveOperator(myOperatorStr: "/")
    }
    @IBAction func tapPlusBtn(_ sender: Any) {
        saveOperator(myOperatorStr: "+")
    }
    @IBAction func tapMinusBtn(_ sender: Any) {
        saveOperator(myOperatorStr: "-")
    }
    @IBAction func tapMultiplyBtn(_ sender: Any) {
        saveOperator(myOperatorStr: "*")
    }
    @IBAction func tapResultBtn(_ sender: Any) {
        if !(resultLabel.text?.isEmpty)!{
            let numb2Str = resultLabel.text
            numb2 = Double(numb2Str!)!
            
            switch myOperator {
            case "+" :
                result = numb1 + numb2
                resetAll()
                resultLabel.text = "\(result)"
                break
            case "-" :
                result = numb1 - numb2
                resetAll()
                resultLabel.text = "\(result)"
                break
            case "*" :
                result = numb1 * numb2
                resetAll()
                resultLabel.text = "\(result)"
                break
            case "/" :
                result = numb1 / numb2
                resetAll()
                resultLabel.text = "\(result)"
                break
            
            default: break
            }
            
            
            
        }
    }
    @IBAction func tap1Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "1")
    }
    @IBAction func tap2Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "2")
    }
    @IBAction func tap3Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "3")
    }
    @IBAction func tap4Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "4")
    }
    @IBAction func tap5Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "5")
    }
    @IBAction func tap6Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "6")
    }
    @IBAction func tap7Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "7")
    }
    @IBAction func tap8Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "8")
    }
    @IBAction func tap9Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "9")
    }
    @IBAction func tap0Btn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: "0")
    }
    @IBAction func tapDotBtn(_ sender: Any) {
        resultLabel.text = returnTextForLabel(tapBtn: ".")
    }
    
    func resetAll() {
        resultLabel.text = ""
        numb1 = 0
        numb2 = 0
        myOperator = ""
    }
    
    func saveOperator(myOperatorStr: String) {
        let numb1Str = resultLabel.text
        numb1 = Double(numb1Str!)!
        resultLabel.text = ""
        myOperator = myOperatorStr
    }
    
    func returnTextForLabel(tapBtn: String) -> String{
        if var textStr = resultLabel.text {
            textStr = textStr + tapBtn
            return textStr
        }
        return ""
    }
}

