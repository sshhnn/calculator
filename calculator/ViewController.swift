//
//  ViewController.swift
//  calculator
//
//  Created by 黃智鉉 on 2017/11/11.
//  Copyright © 2017年 HCH. All rights reserved.
//

import UIKit

enum Sign {
    case nodo
    case plus
    case minus
    case multi
    case division
}

 
class ViewController: UIViewController {


    @IBOutlet weak var resultLabel: UILabel!

    var firstNumber : Double = 0.0
    var secondNumber : Double = 0.0
    var currentSign = Sign.nodo

    @IBAction func plus(_ sender: Any) {
        firstNumber = Double(resultLabel.text!)!
        resultLabel.text! = "0"
        currentSign = Sign.plus
    }
    @IBAction func minus(_ sender: Any) {
        firstNumber = Double(resultLabel.text!)!
        resultLabel.text! = "0"
        currentSign = Sign.minus
    }
    @IBAction func multi(_ sender: Any) {
        firstNumber = Double(resultLabel.text!)!
        resultLabel.text! = "0"
        currentSign = Sign.multi
    }
    @IBAction func division(_ sender: Any) {
        firstNumber = Double(resultLabel.text!)!
        resultLabel.text! = "0"
        currentSign = Sign.division
    }
    @IBAction func equalButton(_ sender: Any) {
        switch currentSign {
        case .plus:
            secondNumber = Double(resultLabel.text!)!
            resultLabel.text! = String(firstNumber + secondNumber)
            resultLabel.text! = deleteZero(labelText: resultLabel.text!)
            currentSign = Sign.nodo
        case .minus:
            secondNumber = Double(resultLabel.text!)!
            resultLabel.text! = String(firstNumber - secondNumber)
            currentSign = Sign.nodo
        case .multi:
            secondNumber = Double(resultLabel.text!)!
            resultLabel.text! = String(firstNumber * secondNumber)
            currentSign = Sign.nodo
        case .division:
            secondNumber = Double(resultLabel.text!)!
            resultLabel.text! = String(firstNumber / secondNumber)
            currentSign = Sign.nodo
        case .nodo:
            break
        }
    }
    
    @IBAction func ACButton(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        resultLabel.text = "0"
        currentSign = Sign.nodo
    }
    func deleteZero(labelText : String) -> String {
        let stringOfNumber = NumberFormatter()
        let str = stringOfNumber.number(from: labelText)!
        return String(describing :  str)
    }
    
    
    @IBAction func num1Button(_ sender: Any) {
        resultLabel.text! += "1"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num2Button(_ sender: Any) {
        resultLabel.text! += "2"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num3Button(_ sender: Any) {
        resultLabel.text! += "3"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num4Button(_ sender: Any) {
        resultLabel.text! += "4"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num5Button(_ sender: Any) {
        resultLabel.text! += "5"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num6Button(_ sender: Any) {
        resultLabel.text! += "6"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num7Button(_ sender: Any) {
        resultLabel.text! += "7"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num8Button(_ sender: Any) {
        resultLabel.text! += "8"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num9Button(_ sender: Any) {
        resultLabel.text! += "9"
        resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func num0Button(_ sender: Any) {
        resultLabel.text! += "0"
        //resultLabel.text! = deleteZero(labelText: resultLabel.text!)
    }
    @IBAction func pointButton(_ sender: Any) {
        resultLabel.text! += "."
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

