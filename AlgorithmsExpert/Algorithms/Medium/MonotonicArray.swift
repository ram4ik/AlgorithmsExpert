//
//  MonotonicArray.swift
//  AlgorithmsExpert
//
//  Created by Ramill Ibragimov on 29.05.2021.
//

import Foundation

class MonotonicArray {
    
    func solutionOne(array: [Int]) -> Bool {
        if array.count <= 2 { return true }
        var isNonDecreasing = true
        var isNonIncreasing = true
        for i in 1..<array.count {
            if array[i] < array[i - 1] {
                isNonDecreasing = false
            }
            if array[i] > array[i - 1] {
                isNonIncreasing = false
            }
        }
        return isNonDecreasing || isNonIncreasing
    }
}
