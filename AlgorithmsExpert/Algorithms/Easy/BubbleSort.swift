//
//  BubbleSort.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class BubbleSort: Helpers {
    
    func solutionOne(array: inout [Int]) -> [Int] {
        var isSorted = false
        var counter = 0
        while !isSorted {
            isSorted = true
            for i in 0..<array.count - 1 - counter {
                if array[i] > array[i + 1] {
                    Helpers.swap(i, i + 1, &array)
                    isSorted = false
                }
            }
            counter = counter + 1
        }
        return array
    }
}
