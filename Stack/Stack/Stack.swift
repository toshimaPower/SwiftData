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
    
    public init() {}
    public init(_ element: [T]) {
        self.elements = element
    }
    
    public init<S: Sequence>(_ s: S) where S.Iterator.Element == T {
        self.elements = Array(s.reversed())
    }
    
    public mutating func push(element: T) {
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

}

extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        return self.elements.description
    }
    
    public var debugDescription: String {
        return self.elements.debugDescription
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension Stack: Sequence {
//    public func makeIterator() -> ArrayIterator<T> {
//        return ArrayIterator<T>(element: self.elements)
//    }
    
    public func makeIterator() -> AnyIterator<T> {
        return AnyIterator(IndexingIterator(_elements: self.elements.lazy.reversed()))
    }
}

public struct ArrayIterator<T> : IteratorProtocol {
    var currentElement: [T]
    init(element: [T]) {
        self.currentElement = element
    }
    
    mutating public func next() -> T? {
        if (currentElement.isEmpty) {
            return nil
        }
        
        return currentElement.popLast()
    }
}
