//
//  InsertionSort.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class InsertionSort: Helpers {
    
    func solutionOne(array: inout [Int]) -> [Int] {
        for i in 1..<array.count {
            var j = i
            while j > 0, array[j] < array[j - 1] {
                swap(j, j - 1, &array)
                j = j - 1
            }
        }
        return array
    }
}
