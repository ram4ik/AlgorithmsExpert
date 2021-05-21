//
//  DepthFirstSearch.swift
//  AlgorithmsExpert
//
//  Created by ramil on 21.05.2021.
//

import Foundation

class DepthFirstSearch {
    
    class Node {
        let name: String
        var children: [Node]
        
        init(name: String) {
            self.name = name
            children = []
        }
        
        func addChild(name: String) -> Node {
            let childNode = Node(name: name)
            children.append(childNode)
            return self
        }
        
        func depthFirstSearch(array: inout [String]) -> [String] {
            array.append(name)
            for child in children {
                _ = child.depthFirstSearch(array: &array)
            }
            return array
        }
    }
}
