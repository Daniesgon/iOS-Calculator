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
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonOperatorAC(_ sender: Any) {
    }
    @IBAction func buttonOperatorReverse(_ sender: Any) {
    }
    @IBAction func buttonOperatorPercent(_ sender: Any) {
    }
    @IBAction func buttonOperatorDivision(_ sender: Any) {
    }
    @IBAction func buttonOperatorMultiplication(_ sender: Any) {
    }
    @IBAction func buttonOperatorSubtraction(_ sender: Any) {
    }
    @IBAction func buttonOperatorSum(_ sender: Any) {
    }
    @IBAction func buttonOperatorResult(_ sender: Any) {
    }
    @IBAction func buttonOperatorDecimal(_ sender: Any) {
    }
    @IBAction func buttonNumber(_ sender: UIButton) {
    }
    


}

