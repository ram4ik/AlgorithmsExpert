//
//  Helpers.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class Helpers {
    
    static func swap(_ firstIndex: Int, _ secondIndex: Int, _ array: inout [Int]) {
        let temp = array[secondIndex]
        array[secondIndex] = array[firstIndex]
        array[firstIndex] = temp
    }
    
    static func getNextIndex(_ currentIndex: inout Int, array: inout [Int]) -> Int {
        let jump = array[currentIndex]
        let nextIndex = (jump + currentIndex) % array.count
        if nextIndex >= 0 {
            return nextIndex
        } else {
            return nextIndex + array.count
        }
    }
}
