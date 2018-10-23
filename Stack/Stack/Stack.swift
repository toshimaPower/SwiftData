//
//  Stack.swift
//  Stack
//
//  Created by SGWORLD on 2018/10/22.
//  Copyright © 2018 SGWORLD. All rights reserved.
//
 
import Foundation

public struct Stack<T> {
    private var elements = [T]()
    private var maxCount: Int
    
    public init(maxCount: Int) {
        self.maxCount = maxCount
    }
    
    public mutating func push(element: T) {
        if isFull {
            print("Stack is Full")
            return
        }
        elements.append(element)
    }
    
    public mutating func pop() -> T? {
        return elements.popLast()
    }
    
    public func peek() -> T? {
        return elements.last
    }
    
    public var count: Int {
        return elements.count
    }
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var isFull: Bool {
        return elements.count == maxCount
    }
}
