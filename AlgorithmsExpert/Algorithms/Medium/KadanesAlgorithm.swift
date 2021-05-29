//
//  KadanesAlgorithm.swift
//  AlgorithmsExpert
//
//  Created by Ramill Ibragimov on 29.05.2021.
//

import Foundation

class KadanesAlgorithm {
    
    func solutionOne(array: [Int]) -> Int {
        if array.count > 0 {
            var maxEditingHere = array.first
            var maxSoFar = array.first
            for i in 1..<array.count {
                let currentNumber = array[i]
                maxEditingHere = max(currentNumber, currentNumber + maxEditingHere!)
                maxSoFar = max(maxSoFar!, maxEditingHere!)
            }
            return maxSoFar!
        } else {
            return -1
        }
    }
}
