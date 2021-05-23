//
//  LongestPeak.swift
//  AlgorithmsExpert
//
//  Created by ramil on 23.05.2021.
//

import Foundation

class LongestPeak {
    
    func solutionOne(array: [Int]) -> Int {
        var longestPeakLenght = 0
        var i = 1
        while i < array.count - 1 {
            let isPeak = array[i - 1] < array[i] && array[i] > array[i + 1]
            if !isPeak {
                i += 1
                continue
            }
            var leftIdx = i - 2
            while leftIdx >= 0, array[leftIdx] < array[leftIdx + 1] {
                leftIdx -= 1
            }
            var rightIdx = i + 2
            while  rightIdx < array.count, array[rightIdx] < array[rightIdx - 1] {
                rightIdx += 1
            }
            let currentPeakLenght = rightIdx - leftIdx - 1
            if currentPeakLenght > longestPeakLenght {
                longestPeakLenght = currentPeakLenght
            }
            i = rightIdx
        }
        return longestPeakLenght
    }
}
