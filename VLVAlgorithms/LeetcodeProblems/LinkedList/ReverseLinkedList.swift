//
//  ReverseLinkedList.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/2.
//

func reverseList<T>(_ head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    var prev: LinkedListNode<T>? = nil
    var current = head
    
    while current != nil {
        let next = current!.next    // 必须先用一个指针next指向current!.next，否则直接操作current!.next = prev后，会丢失之前的current!.next
        current!.next = prev
        prev = current
        current = next
    }
    
    return prev
}
