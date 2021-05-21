//
//  Sum.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class Sum {
    class Values {
        var value: Int
        var left: Values?
        var right: Values?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    func solutionOne(root: Values) -> [Int] {
        var sums = [Int]()
        helper(node: root, runningSum: 0, sums: &sums)
        return sums
    }
    
    private func helper(node: Values?, runningSum: Int, sums: inout [Int]) {
        if let n = node {
            let newRunningSum = runningSum + n.value
            if n.left == nil, n.right == nil {
                sums.append(newRunningSum)
                return
            }
            helper(node: n.left, runningSum: runningSum, sums: &sums)
            helper(node: n.right, runningSum: runningSum, sums: &sums)
        }
    }
}
