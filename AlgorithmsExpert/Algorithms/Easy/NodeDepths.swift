//
//  NodeDepths.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class NodeDepths {
    
    class BinaryTree {
        var value: Int
        var left: BinaryTree?
        var right: BinaryTree?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    struct Level {
        var root: BinaryTree?
        var depth: Int
    }
    
    func solutionOne(_ root: BinaryTree?) -> Int {
        var sumOfDephts = 0
        var stack: [Level] = [Level(root: root, depth: 0)]
        while stack.count > 0 {
            let top = stack[stack.count - 1]
            stack.removeLast()
            
            let depth = top.depth
            if let node = top.root {
                sumOfDephts += depth
                stack.append(Level(root: node.left, depth: depth + 1))
                stack.append(Level(root: node.right, depth: depth + 1))
            }
        }
        return sumOfDephts
    }
    
    func solutionTwo(_ root: BinaryTree?, _ depth: Int = 0) -> Int {
        if let tree = root {
            return depth + solutionTwo(tree.left, depth + 1) + solutionTwo(tree.right, depth + 1)
        }
        return 0
    }
}
