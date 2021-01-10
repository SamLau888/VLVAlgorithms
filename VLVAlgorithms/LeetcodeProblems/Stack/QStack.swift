//
//  QStack.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/9.
//

class QStack {

    private var firstArray = [Int]()
    private var secondArray = [Int]()
    
    /** Initialize your data structure here. */
    init() {

    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        firstArray.append(x)
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        if secondArray.isEmpty {
            while firstArray.count != 1 {
                let i = firstArray.removeFirst()
                secondArray.append(i)
            }
            return firstArray.removeFirst()
        }
        else {
            while secondArray.count != 1 {
                let i = secondArray.removeFirst()
                firstArray.append(i)
            }
            return secondArray.removeFirst()
        }
    }
    
    /** Get the top element. */
    func top() -> Int {
        firstArray.isEmpty ? secondArray.last! : firstArray.last!
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        firstArray.isEmpty && secondArray.isEmpty
    }
}
