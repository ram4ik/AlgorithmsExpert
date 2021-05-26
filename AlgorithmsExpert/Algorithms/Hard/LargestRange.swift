//
//  LargestRange.swift
//  AlgorithmsExpert
//
//  Created by ramil on 26.05.2021.
//

import Foundation

class LargestRange {
    
    func solutionOne(array: [Int]) -> [Int] {
        var longestLength = 0
        var bestRange = [Int]()
        var hash = [Int: Bool]()
        
        for number in array {
            hash[number] = true
        }
        
        for number in array {
            if let hashAtNumber = hash[number], !hashAtNumber {
                continue
            }
            
            var currentLenght = 1
            var left = number - 1
            var right = number + 1
            
            while hash.keys.contains(left) {
                hash[left] = false
                currentLenght += 1
                left -= 1
            }
            
            while hash.keys.contains(right) {
                hash[right] = false
                currentLenght += 1
                right += 1
            }
            
            if currentLenght > longestLength {
                bestRange = [left + 1, right - 1]
                longestLength = currentLenght
            }
        }
        return bestRange
    }
}
