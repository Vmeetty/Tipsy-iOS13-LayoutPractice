//
//  Brain.swift
//  Tipsy
//
//  Created by user on 07.04.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Brain {
    
    var decimal: Float = 0.0
    var splitValue : Float = 2
    var result: Float = 0.0
    var tip = ""
    
    mutating func getDecimalOf(button: UIButton) {
        let trimmed = button.currentTitle!.replacingOccurrences(of: "%", with: "", options: .regularExpression)
        let decimalValue = Float(trimmed)! / Float(100)
        decimal = decimalValue
    }
    
    mutating func calculatingBill(_ value: String?)  {
        let billValue = Float(value ?? "") ?? 0.0
        let devide = billValue / splitValue
        let multiplier = devide + (devide * decimal)
        result = multiplier
    }
    
    func getResult() -> String {
        return String(format: "%.1f", result)
    }
    
    mutating func getTimValueBy(_ str: String?) {
        tip = str ?? ""
    }
    
    
}



