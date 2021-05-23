//
//  SingleCircleCheck.swift
//  AlgorithmsExpert
//
//  Created by ramil on 23.05.2021.
//

import Foundation

class SingleCircleCheck {
    
    func solutionOne(array: [Int]) -> Bool {
        var currentIndex = 0
        var numberOfElementsVisited = 0
        var innerArray = array
        while numberOfElementsVisited < array.count {
            if currentIndex == 0, numberOfElementsVisited > 0 {
                return false
            }
            numberOfElementsVisited += 1
            currentIndex = Helpers.getNextIndex(&currentIndex, array: &innerArray)
        }
        return currentIndex == 0
    }
}
