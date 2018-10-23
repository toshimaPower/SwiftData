//
//  main.swift
//  Stack
//
//  Created by SGWORLD on 2018/10/22.
//  Copyright © 2018 SGWORLD. All rights reserved.
//
 
import Foundation

var myStack = Stack<Int>(maxCount: 5)
print(myStack.isEmpty)
myStack.push(element: 1)
print(myStack.isEmpty)
myStack.push(element: 10)
myStack.push(element: 24)
print(myStack.isFull)
myStack.push(element: 45)
myStack.push(element: 892)
print(myStack.isFull)
myStack.push(element: 892)
print(myStack.count)
