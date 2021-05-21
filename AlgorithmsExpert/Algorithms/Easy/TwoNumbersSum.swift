//
//  TwoNumbersSum.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class TwoNumbersSum {
    
    func solutionOne(array: [Int], targetSum: Int) -> [Int] {
        for i in 0..<array.count - 1 {
            let firstNumber = array[i]
            for j in i + 1 ..< array.count {
                let secondNumber = array[j]
                
                if firstNumber + secondNumber == targetSum {
                    return [firstNumber, secondNumber]
                }
            }
        }
        return []
    }
    
    func solutionTwo(array: [Int], targetSum: Int) -> [Int] {
        var numberHashMap = [Int: Bool]()
        for number in array {
            let potentialMatch = targetSum - number
            if let exists = numberHashMap[potentialMatch], exists {
                return [potentialMatch, number]
            } else {
                numberHashMap[potentialMatch] = true
            }
        }
        return []
    }
    
    func solutionThree(array: [Int], targetSum: Int) -> [Int] {
        let array = array.sorted()
        var leftPointer = 0
        var rightPointer = array.count - 1
        
        while leftPointer < rightPointer {
            let leftMost = array[leftPointer]
            let rightMost = array[rightPointer]
            let currentSum = leftMost + rightMost
            if currentSum == targetSum {
                return [leftMost, rightMost]
            } else if currentSum < targetSum {
                leftPointer = leftPointer + 1
            } else if currentSum > targetSum {
                rightPointer = rightPointer - 1
            }
        }
        return []
    }
}
