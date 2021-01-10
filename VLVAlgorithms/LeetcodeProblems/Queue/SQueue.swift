//
//  SQueue.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/9.
//

class SQueue {
    
    private var inArray = [Int]()
    private var outArray = [Int]()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        inArray.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if outArray.isEmpty {
            while let i = inArray.popLast() {
                outArray.append(i)
            }
        }
        
        return outArray.removeLast()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return inArray.isEmpty ? outArray.last! : inArray.first!
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        inArray.isEmpty && outArray.isEmpty
    }
}
