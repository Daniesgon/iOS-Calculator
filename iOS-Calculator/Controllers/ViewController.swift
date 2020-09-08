//
//  ViewController.swift
//  iOS-Calculator
//
//  Created by Daniel Escandell González on 08/09/2020.
//  Copyright © 2020 Daniel Escandell González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        
        sender.shine()
    }
    @IBAction func buttonOperatorReverse(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorPercent(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorDivision(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorMultiplication(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorSubtraction(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorSum(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorResult(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonOperatorDecimal(_ sender: UIButton) {
        
        sender.shine()
    }
    @IBAction func buttonNumber(_ sender: UIButton) {
        
        
    }
    


}

