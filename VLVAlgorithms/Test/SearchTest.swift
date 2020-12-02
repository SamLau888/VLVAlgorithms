//
//  SearchTest.swift
//  VLVAlgorithms
//
//  Created by sam on 2020/12/2.
//

public struct SearchTest {
    
    public static func test() {
        
        example(name: "Linear Search") {
            let array = [4, 12, 2, 0, 13, 8, 3, 19, 88]
            if let index = Search.linearSearch(array, 13) {
                print("Index: \(index)")
            }
        }
        
        example(name: "Binary Search") {
            let array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
            if let index = Search.binarySearch(array, 5) {
                print("Index: \(index)")
            }
        }
    }
    
}
