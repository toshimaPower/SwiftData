//
//  Queue.swift
//  Queue
//
//  Created by SGWORLD on 2018/10/23.
//  Copyright © 2018 SGWORLD. All rights reserved.
//

/*
 enqueue() : queueに新しい要素を追加
 dequeue() : queueの先頭の要素を削除後に削除した要素を返す
 peek()    : queueの先頭の要素を要素を返す、削除はしない
 clear()   : queueを空の状態にする
 count     : queueの要素数を返す
 isEmpty() : queueが空の場合trueをそうでない場合falseを返す
 isFull()  : queueが満タンの場合trueを、そうでない場合falseを返す
 
 
 */

import Foundation

public struct Queue<T> {

    private var data = [T]()
    
    public var capacity: Int {
        get {
            return data.capacity
        }
        
        set {
            data.reserveCapacity(newValue)
        }
    }
    
    public var count: Int {
        return data.count
    }
    
    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        data.append(contentsOf: elements)
    }
    
    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }
    
    public mutating func enqueue(data: T) {
        self.data.append(data)
    }
    
    public mutating func peek() -> T? {
        return data.first
    }
    
    public mutating func clear() {
        data.removeAll()
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
    
    public func isFull() -> Bool {
        return count == capacity
    }
}

extension Queue: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        return data.description
    }
    
    public var debugDescription: String {
        return data.debugDescription
    }
}

extension Queue: ExpressibleByArrayLiteral {

    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension Queue: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        return AnyIterator(IndexingIterator(_elements: data.lazy))
    }
}
