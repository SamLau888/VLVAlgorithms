//
//  MergeTwoList.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/4.
//

func mergeTwoLists<T: Comparable>(_ l1: LinkedListNode<T>?, _ l2: LinkedListNode<T>?) -> LinkedListNode<T>? {
    
    guard let l1 = l1 else {
        return l2
    }
    
    guard let l2 = l2 else {
        return l1
    }
    
    var list: LinkedListNode<T>? = nil
    var otherList: LinkedListNode<T>? = nil
    
    if l1.element! < l2.element! {
        list = l1
        otherList = l2
    }
    else {
        list = l2
        otherList = l1
    }
    
    var current = list
    
    var currentL1 = current!.next
    var currentL2 = otherList
    
    while let l1Node = currentL1, let l2Node = currentL2 {
        
        if l1Node.element! < l2Node.element! {
            currentL1 = l1Node.next
            current!.next = l1Node
        }
        else {
            currentL2 = l2Node.next
            current!.next = l2Node
        }
        
        current = current!.next
    }
    
    if let currentL1 = currentL1 {
        current!.next = currentL1
    }

    if let currentL2 = currentL2 {
        current!.next = currentL2
    }
    
    return list
}
