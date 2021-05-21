//
//  Palindrome.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class Palindrome {
    
    func solutionOne(string: String) -> Bool {
        var reversedString = ""
        for i in (0..<string.count).reversed() {
            let startIndex = string.index(string.startIndex, offsetBy: i)
            let currentChar = string[startIndex]
            reversedString.append(currentChar)
        }
        return string == reversedString
    }
    
    func solutionTwo(string: String) -> Bool {
        var leftPointer = 0
        var rightPointer = string.count - 1
        var leftIndex = string.index(string.startIndex, offsetBy: leftPointer)
        var rightIndex = string.index(string.startIndex, offsetBy: rightPointer)
        
        while leftIndex < rightIndex {
            if string[leftIndex] != string[rightIndex] {
                return false
            }
            leftPointer = leftPointer + 1
            rightPointer = rightPointer - 1
            leftIndex = string.index(string.startIndex, offsetBy: leftPointer)
            rightIndex = string.index(string.startIndex, offsetBy: rightPointer)
        }
        return true
    }
}
