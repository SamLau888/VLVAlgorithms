//
//  RemoveNthFromEnd.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/4.
//

func removeNthFromEnd<T>(_ head: LinkedListNode<T>?, _ n: Int) -> LinkedListNode<T>? {
    
    let dummy = LinkedListNode<T>()
    dummy.next = head
    
    var first: LinkedListNode<T>? = dummy
    
    for _ in 0..<n {
        first = first?.next
    }
    
    var second: LinkedListNode<T>? = dummy
    
    while let next = first?.next {
        first = next
        second = second?.next
    }

    second?.next = second?.next?.next

    return dummy.next
}
