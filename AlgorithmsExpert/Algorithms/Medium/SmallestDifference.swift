//
//  SmallestDifference.swift
//  AlgorithmsExpert
//
//  Created by ramil on 22.05.2021.
//

import Foundation

class SmallestDifference {
    
    func solutionOne(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        arrayOne.sort()
        arrayTwo.sort()
        
        var idxOne = 0
        var idxTwo = 0
        
        var current = Int.max
        var smallest = Int.max
        
        var smallestPair: [Int] = []
        while idxOne < arrayOne.count, idxTwo < arrayTwo.count {
            let firstNumber = arrayOne[idxOne]
            let secondNumber = arrayTwo[idxTwo]
            if firstNumber < secondNumber {
                current = secondNumber - firstNumber
                idxOne = idxOne + 1
            } else if firstNumber > secondNumber {
                current = firstNumber - secondNumber
                idxTwo = idxTwo + 1
            } else {
                return [firstNumber, secondNumber]
            }
            if smallest > current {
                smallest = current
                smallestPair = [firstNumber, secondNumber]
            }
        }
        return smallestPair
    }
}
