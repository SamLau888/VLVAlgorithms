//
//  HasCycle.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/2.
//

func hasCycle<T>(_ head: LinkedListNode<T>?) -> Bool {
    
    var slow = head
    var fast = head
    
    while slow != nil, fast != nil, fast?.next != nil {
        
        slow = slow!.next
        fast = fast!.next!.next
        
        // 逻辑放后边是因为，一开始slow、fast都指向head，需要经过一次转换赋值
        if slow === fast {
            return true
        }
    }
    
    return false
}
