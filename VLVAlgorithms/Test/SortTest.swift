//
//  SortTest.swift
//  VLVAlgorithms
//
//  Created by sam on 2020/11/30.
//

public struct SortTest {
    
    public static func test() {
        
        example(name: "Bubble Sort") {
            var array = [4, 12, 2, 0, 13, 8, 3, 19, 88]
            print("Original: \(array)")
            Sort.bubbleSort(&array, <)
            print("Bubble sort by < : \(array)")
        }
        
        example(name: "Selection Sort") {
            var array = [4, 12, 2, 0, 13, 8, 3, 19, 88]
            print("Original: \(array)")
            Sort.selectionSort(&array, >)
            print("Selection sort by > : \(array)")
        }
        
        example(name: "Insertion Sort") {
            var array = [4, 12, 2, 0, 13, 8, 3, 19, 88]
            print("Original: \(array)")
            Sort.insertionSort(&array, <)
            print("Insertion sort by < : \(array)")
        }
        
        example(name: "Merge Sort") {
            var array = [4, 12, 2, 0, 13, 8, 3, 19, 88]
            print("Original: \(array)")
            Sort.mergeSort(&array, >)
            print("Merge sort by > : \(array)")
        }
        
        example(name: "Quick Sort") {
            var array = [12, 0, 3, 9, 2, 18, 8, 27, 1, 5, 8, -1, 21]
            print("Original: \(array)")
            Sort.quickSort(&array, <)
            print("Merge sort by < : \(array)")
        }
    }
}
