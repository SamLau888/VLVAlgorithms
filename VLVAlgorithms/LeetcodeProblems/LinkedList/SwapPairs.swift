//
//  SwapPairs.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/2.
//

func swapPairsExchangeValue<T>(_ head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    var current = head
    
    while current != nil, let next = current!.next {
        (current!.element, next.element) = (next.element, current!.element)
        current = next.next
    }
    
    return head
}

func swapPairsExchangePointer<T>(_ head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    let dummy = LinkedListNode<T>()
    dummy.next = head
    
    var prev = dummy
    var current = head
    
    while current != nil, let next = current!.next {
        
        let first = current!
        let second = next
        let third = next.next
        
        prev.next = second
        second.next = first
        first.next = third
        
        prev = first
        current = third
    }
    
    return dummy.next
}
