//
//  main.swift
//  Stack
//
//  Created by SGWORLD on 2018/10/22.
//  Copyright © 2018 SGWORLD. All rights reserved.
//
 
import Foundation


var myStack = Stack<Int>()
print(myStack.isEmpty)
myStack.push(element: 1)
print(myStack.isEmpty)
myStack.push(element: 10)
myStack.push(element: 24)

myStack.push(element: 45)
myStack.push(element: 892)

myStack.push(element: 892)
print(myStack.count)
print(myStack.debugDescription)
print(myStack.description)

//var myStack = [4,5,6,7]

var my2Stack = [2, 5, 6, 3]
var my2StackStack = Stack<Int>(my2Stack)


for value in my2StackStack {
    print(value)
}
