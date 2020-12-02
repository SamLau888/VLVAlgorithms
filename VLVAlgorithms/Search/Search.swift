//
//  Search.swift
//  VLVAlgorithms
//
//  Created by sam on 2020/12/2.
//

public struct Search {
    
}

extension Search {
    
    public static func linearSearch<Element: Comparable>(_ elements: [Element], _ targetElement: Element) -> Int? {
        
        for (index, element) in elements.enumerated() {
            if element == targetElement {
                return index
            }
        }
        
        return nil
    }
    
    public static func binarySearch<Element: Comparable>(_ elements: [Element], _ targetElement: Element) -> Int? {
        
        var low = 0
        var high = elements.count - 1
        
        while low <= high {
            
            let centerIndex = (low + high) / 2
            
            if targetElement < elements[centerIndex] {
                high = centerIndex - 1
            }
            else if targetElement > elements[centerIndex] {
                low = centerIndex + 1
            }
            else {
                return centerIndex
            }
        }
        
        return nil
    }
}
