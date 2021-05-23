//
//  MoveElementToTheEnd.swift
//  AlgorithmsExpert
//
//  Created by ramil on 23.05.2021.
//

import Foundation

class MoveElementToTheEnd {
    
    func solutionOne(_ array: inout [Int], _ toMove: Int) -> [Int] {
        var i = 0
        var j = array.count - 1
        while i < j {
            while i < j, array[j] == toMove {
                j -= 1
            }
            if array[i] == toMove {
                (array[i], array[j]) = (array[j], array[i])
            }
            i += 1
        }
        return array
    }
}
