//
//  SelectionSort.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class SelectionSort: Helpers {
    
    func solutionOne(array: inout [Int]) -> [Int] {
        var currentIndex = 0
        while currentIndex < array.count - 1 {
            var indexOfSmallest = currentIndex
            for i in currentIndex + 1 ..< array.count {
                if array[indexOfSmallest] > array[i] {
                    indexOfSmallest = i
                }
            }
            Helpers.swap(currentIndex, indexOfSmallest, &array)
            currentIndex = currentIndex + 1
        }
        return array
    }
}
