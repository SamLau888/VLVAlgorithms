//
//  DetectCycle.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/2.
//

func detectCycle<T>(_ head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    var hasCycle = false
    
    var slow = head
    var fast = head
    
    while slow != nil, fast != nil, fast?.next != nil {
        
        slow = slow!.next
        fast = fast!.next!.next
        
        if slow === fast {
            hasCycle = true
            break
        }
    }
    
    if hasCycle {
        
        fast = head
        while slow !== fast {
            slow = slow!.next
            fast = fast!.next
        }
        return slow
    }
    
    return nil
}

