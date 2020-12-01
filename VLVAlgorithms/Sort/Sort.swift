//
//  Sort.swift
//  VLVAlgorithms
//
//  Created by sam on 2020/11/30.
//

public struct Sort {
    
}

extension Sort {
    
    public static func bubbleSort<Element: Comparable>(_ elements: inout [Element], _ sort: (Element, Element) -> Bool) {
        
        guard elements.count > 1 else {
            return
        }
        
        for end in (1..<elements.count).reversed()  {

            var swapped = false

            for current in 0..<end {

                if sort(elements[current + 1], elements[current]) {

                    elements.swapAt(current + 1, current)

                    swapped = true
                }
            }

            if !swapped {
                return
            }
        }
    }
    
    public static func selectionSort<Element: Comparable>(_ elements: inout [Element], _ sort: (Element, Element) -> Bool) {
        
        guard elements.count > 1 else {
            return
        }
        
        for current in 0..<(elements.count - 1) {
            
            var selected = current
            
            for other in (current + 1)..<elements.count {
                
                if sort(elements[other], elements[selected]) {
                    selected = other
                }
            }
            
            if selected != current {
                elements.swapAt(selected, current)
            }
        }
    }
    
    public static func insertionSort<Element: Comparable>(_ elements: inout [Element], _ sort: (Element, Element) -> Bool) {
        
        guard elements.count > 1 else {
            return
        }
        
        for current in 1..<elements.count {
            
            for shifting in (1...current).reversed() {
                
                if sort(elements[shifting], elements[shifting - 1]) {
                    elements.swapAt(shifting, shifting - 1)
                }
                else {
                    break
                }
            }
        }
    }
}

extension Sort {
    
    public static func mergeSort<Element: Comparable>(_ elements: inout [Element], _ sort: (Element, Element) -> Bool) {
        elements = mergeSort(elements, sort)
    }
    
    private static func mergeSort<Element: Comparable>(_ elements: [Element], _ sort: (Element, Element) -> Bool) -> [Element]  {

        guard elements.count > 1 else {
            return elements
        }
        
        let middle = elements.count / 2
      
        let leftElements = mergeSort(Array(elements[..<middle]), sort)
        let rightElements = mergeSort(Array(elements[middle...]), sort)
      
        return merge(leftElements, rightElements, sort)
    }
    
    private static func merge<Element: Comparable>(_ leftElements: [Element], _ rightElements: [Element], _ sort: (Element, Element) -> Bool) -> [Element] {
        
        var result: [Element] = []
        
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < leftElements.count && rightIndex < rightElements.count {
            
            let leftElement = leftElements[leftIndex]
            let rightElement = rightElements[rightIndex]
            
            if sort(leftElement, rightElement) {
                result.append(leftElement)
                leftIndex += 1
            }
            else if sort(rightElement, leftElement) {
                result.append(rightElement)
                rightIndex += 1
            }
            else {
                result.append(leftElement)
                leftIndex += 1
                result.append(rightElement)
                rightIndex += 1
            }
        }
       
        if leftIndex < leftElements.count {
            result += leftElements
        }
        
        if rightIndex < rightElements.count {
            result += rightElements
        }
         
        return result
    }
}

extension Sort {
    
    public static func quickSort<Element: Comparable>(_ elements: inout [Element], _ sort: (Element, Element) -> Bool) {
        
        guard elements.count > 1 else {
            return
        }
        
        let low = 0
        let high = elements.count - 1
        
        // 这步用于优化算法避免产生O(n2)的可能。取低中高3个数的中间的数，与低位数交换（从低位开始做枢轴值）
        elements.swapAt(low, medianOfThree(&elements, low, high, sort))
        
        _quickSort(&elements, low, high, sort)
    }
    
    private static func _quickSort<Element: Comparable>(_ elements: inout [Element], _ low: Int, _ high: Int, _ sort: (Element, Element) -> Bool) {
        
        if low < high {
            let pivot = partition(&elements, low, high, sort)
            _quickSort(&elements, low, pivot - 1, sort)
            _quickSort(&elements, pivot + 1, high, sort)
        }
    }
    
    private static func partition<Element: Comparable>(_ elements: inout [Element], _ low: Int, _ high: Int, _ sort: (Element, Element) -> Bool) -> Int {
        
        let pivot = elements[low]
        
        var begin = low
        var end = high
        
        while begin < end {
                
            while begin < end {
                
                if sort(pivot, elements[end]) {
                    end -= 1
                }
                else {
                    elements.swapAt(begin, end)
                    begin += 1
                    break
                }
            }
            
            while begin < end {
                
                if sort(elements[begin], pivot) {
                    begin += 1
                }
                else {
                    elements.swapAt(end, begin)
                    end -= 1
                    break
                }
            }
        }
        
        // begin == end
        elements[begin] = pivot
        
        return begin
    }
    
    private static func medianOfThree<Element: Comparable>(_ elements: inout [Element], _ low: Int, _ high: Int, _ sort: (Element, Element) -> Bool) -> Int {
        
        let center = (low + high) / 2
        
        if sort(elements[center], elements[low]) {
            elements.swapAt(center, low)
        }
        
        if sort(elements[high], elements[low]) {
            elements.swapAt(high, low)
        }
        
        if sort(elements[high], elements[center]) {
            elements.swapAt(high, center)
        }
        
        return center
    }
}
