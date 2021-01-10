//
//  MiddleNode.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/4.
//

func middleNode<T>(_ head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    var slow = head
    var fast = head
    
    while slow != nil, fast != nil, fast!.next != nil {
        slow = slow!.next
        fast = fast!.next?.next
    }
    
    return slow
}
