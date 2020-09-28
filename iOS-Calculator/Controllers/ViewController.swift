//
//  ViewController.swift
//  iOS-Calculator
//
//  Created by Daniel Escandell González on 08/09/2020.
//  Copyright © 2020 Daniel Escandell González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var operation: operationType = .none
    private var operating: Bool = false
    private var decimal:Bool = false
    
    private var total: Double = 0.0
    private var temp: Double = 0.0
    
    private enum operationType {
        case none
        case percent
        case division
        case multiplication
        case subtraction
        case sum
    }
    
    //Constants
    private let kMaxLength :Int = 9
    private let kMaxNumber :Double = 999999999
    private let kMinNumber :Double = 0.00000001
    private let kDecimal = ","
    
    
    //Display
    @IBOutlet weak var display: UILabel!
    
    //Operators
    @IBOutlet weak var operatorAC: UIButton!
    @IBOutlet weak var operatorReverse: UIButton!
    @IBOutlet weak var operatorPercent: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorSubtraction: UIButton!
    @IBOutlet weak var operatorSum: UIButton!
    @IBOutlet weak var operatorResult: UIButton!
    @IBOutlet weak var operatorDecimal: UIButton!
    
    //Numbers
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    
    private let auxFormmater : NumberFormatter = {
        let formmater = NumberFormatter()
        let locale = Locale.current
        formmater.groupingSeparator = ""
        formmater.decimalSeparator = ","
        formmater.numberStyle = .decimal
        return formmater
    }()
    
    private let printFormmater : NumberFormatter = {
        let formmater = NumberFormatter()
        let locale = Locale.current
        formmater.groupingSeparator = locale.groupingSeparator
        formmater.decimalSeparator = locale.decimalSeparator
        formmater.numberStyle = .decimal
        formmater.maximumIntegerDigits = 9
        formmater.minimumFractionDigits = 0
        formmater.maximumFractionDigits = 8
        return formmater
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Round Out Buttons
        operatorAC.round()
        operatorReverse.round()
        operatorPercent.round()
        operatorDivision.round()
        operatorMultiplication.round()
        operatorSubtraction.round()
        operatorSum.round()
        operatorResult.round()
        operatorDecimal.round()
        
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        
    }
    
    @IBAction func buttonOperatorAC(_ sender: UIButton) {
        
        clean()
        sender.shine()
        
    }
    @IBAction func buttonOperatorReverse(_ sender: UIButton) {
        
        temp = temp * (-1)
        display.text = printFormmater.string(from: NSNumber(value: temp))
        sender.shine()
        
    }
    @IBAction func buttonOperatorPercent(_ sender: UIButton) {
        
        calculate()
        operating = true
        operation = .percent
        sender.shine()
        
    }
    @IBAction func buttonOperatorDivision(_ sender: UIButton) {
        
        calculate()
        operating = true
        operation = .division
        sender.shine()
        
    }
    @IBAction func buttonOperatorMultiplication(_ sender: UIButton) {
        
        calculate()
        operating = true
        operation = .multiplication
        sender.shine()
        
    }
    @IBAction func buttonOperatorSubtraction(_ sender: UIButton) {
        
        calculate()
        operating = true
        operation = .subtraction
        sender.shine()
        
    }
    @IBAction func buttonOperatorSum(_ sender: UIButton) {
        
        calculate()
        operating = true
        operation = .sum
        sender.shine()
        
    }
    @IBAction func buttonOperatorResult(_ sender: UIButton) {
        
        calculate()
        sender.shine()
        
    }
    @IBAction func buttonOperatorDecimal(_ sender: UIButton) {
        
        let currentTemp = auxFormmater.string(from: NSNumber(value: temp))
        if !operating && currentTemp!.count >= kMaxLength {
            return
        }
        display.text = display.text! + kDecimal
        decimal = true
        sender.shine()
        
    }
    @IBAction func buttonNumber(_ sender: UIButton) {
        
        operatorAC.setTitle("C", for: .normal)
        var currentTemp = auxFormmater.string(from: NSNumber(value: temp))
        if !operating && kMaxLength <= currentTemp!.count {
            return
        }
        
        if operating {
            total = total == 0 ? temp : total
            currentTemp = ""
            display.text = ""
            operating = false
        }
        
        if decimal {
            currentTemp = currentTemp! + kDecimal
        }
        
        let number = sender.tag
        temp  = Double(currentTemp! + String(number))!
        display.text = printFormmater.string(from: NSNumber(value: temp))
        
        sender.shine()
        
    }
    
    func clean () {
        operatorAC.setTitle("AC", for: .normal)
        operation = .none
        
        if temp != 0 {
            temp = 0
            display.text = "0"
        }
        total = 0
        
    }
    
    func calculate () {
        
        switch operation {
        case .none:
        break
            
        case .percent:
            temp = temp / 100
            total = temp
        break
            
        case .division:
            total = total / temp
        break
            
        case .multiplication:
            total = total * temp
        break
            
        case .subtraction:
            total = total - temp
        break
            
        case .sum:
            total = total + temp
        break
        }
        
        //Comprobamos que el valor calculado esta comprendido en el rango maximo y minimo permitido
        if total <= kMaxNumber && total >= kMinNumber {
            display.text = printFormmater.string(from: NSNumber(value: total))
        }
    }

}

