//
//  FindLoop.swift
//  AlgorithmsExpert
//
//  Created by Ramill Ibragimov on 30.05.2021.
//

import Foundation

class FindLoop {
    
    class LinkedList {
        var value: Int
        var next: LinkedList?
        init(value: Int) {
            self.value = value
            next = nil
        }
    }
    
    func solutionOne(head: LinkedList) -> LinkedList? {
        var firstPointer = head.next
        var secondPointer = head.next?.next
        
        while firstPointer !== secondPointer {
            firstPointer = firstPointer?.next
            secondPointer = secondPointer?.next?.next
        }
        firstPointer = head
        while firstPointer !== secondPointer {
            firstPointer = firstPointer?.next
            secondPointer = secondPointer?.next
        }
        return firstPointer
    }
}
