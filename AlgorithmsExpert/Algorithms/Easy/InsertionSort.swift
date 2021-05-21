//
//  InsertionSort.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class InsertionSort {
    
    func solutionOne(array: inout [Int]) -> [Int] {
        for i in 1..<array.count {
            var j = i
            while j > 0, array[j] < array[j - 1] {
                helper(j, j - 1, &array)
                j = j - 1
            }
        }
        return array
    }
    
    private func helper(_ firstIndex: Int, _ secondIndex: Int, _ array: inout [Int]) {
        let temp = array[secondIndex]
        array[secondIndex] = array[firstIndex]
        array[firstIndex] = temp
    }
}
