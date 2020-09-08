//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Daniel Escandell González on 08/09/2020.
//  Copyright © 2020 Daniel Escandell González. All rights reserved.
//

import UIKit

extension UIButton{

    //Round out buttons
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    
    //Shine
    func shine () {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5}){ (completion) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.alpha = 1})
        }
    }
    
}
