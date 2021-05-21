//
//  FindClosestValueInValues.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class FindClosestValueInValues {
    
    class Values {
        var value: Int
        var left: Values?
        var right: Values?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    
    func solutionOne(tree: Values?, target: Int) -> Int {
        var closest = Int(Int32.max)
        return helperOne(tree: tree, target: target, closest: &closest)
    }
    
    func solutionTwo(tree: Values?, target: Int) -> Int {
        var closest = Int(Int32.max)
        return helperTwo(tree: tree, target: target, closest: &closest)
    }
    
    private func helperOne(tree: Values?, target: Int, closest: inout Int) -> Int {
        if tree === nil {
            return closest
        }
        
        if let tree = tree {
            let closestDifference = target - closest
            let currentDifference = target - tree.value
            
            if closestDifference.magnitude > currentDifference.magnitude {
                closest = tree.value
            }
        }
        
        if let tree = tree, target < tree.value {
            if let left = tree.left {
                return helperOne(tree: left, target: target, closest: &closest)
            } else {
                return closest
            }
        } else if let tree = tree, target > tree.value {
            if let right = tree.right {
                return helperOne(tree: right, target: target, closest: &closest)
            } else {
                return closest
            }
        } else {
            return closest
        }
    }
    
    private func helperTwo(tree: Values?, target: Int, closest: inout Int) -> Int {
        var currentNode = tree
        
        while currentNode !== nil {
            if let node = currentNode {
                let closestDifference = target - closest
                let currentDifference = target - node.value
                
                if closestDifference.magnitude > currentDifference.magnitude {
                    closest = node.value
                }
            }
            
            if let node = currentNode, target < node.value {
                currentNode = node.left
            } else if let node = currentNode, target > node.value {
                currentNode = node.right
            } else {
                break
            }
        }
        return closest
    }
}
