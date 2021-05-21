//
//  ValidateSubsequence.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class ValidateSubsequence {
    
    func solutionOne(_ array: [Int], _ sequence: [Int]) -> Bool {
        var arrIdx = 0
        var seqIdx = 0
        while arrIdx < array.count, seqIdx < sequence.count {
            if array[arrIdx] == sequence[seqIdx] {
                seqIdx += 1
            }
            arrIdx += 1
        }
        return seqIdx == sequence.count
    }
    
    func solutionTwo(_ array: [Int], _ sequence: [Int]) -> Bool {
        var seqIdx = 0
        for value in array {
            if seqIdx == sequence.count {
                break
            }
            if value == sequence[seqIdx] {
                seqIdx += 1
            }
        }
        return seqIdx == sequence.count
    }
}
