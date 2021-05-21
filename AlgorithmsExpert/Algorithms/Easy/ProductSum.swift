//
//  ProductSum.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class ProductSum {
    
    func solutionOne(_ array: [Any], multiplier: Int) -> Int {
        var sum = 0
        
        for element in array {
            if let elementAsArray = element as? [Any] {
                sum += solutionOne(elementAsArray, multiplier: multiplier + 1)
            } else if let elementAsInt = element as? Int {
                sum += elementAsInt
            }
        }
        return sum * multiplier
    }
}
