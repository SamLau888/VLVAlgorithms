//
//  ValidParentheses.swift
//  LeetcodeProblems
//
//  Created by sam on 2021/1/9.
//

func isValidParenthesesStack(_ s: String) -> Bool {
    
//    var stack = Stack<Character>()
//
//    for c in s {
//
//        if c == "(" || c == "[" || c == "{" {
//            stack.push(c)
//        }
//        else if c == ")" {
//            if stack.peek == "(" {
//                stack.pop()
//            }
//            else {
//                return false
//            }
//
//        }
//        else if c == "]" {
//            if stack.peek == "[" {
//                stack.pop()
//            }
//            else {
//                return false
//            }
//        }
//        else if c == "}" {
//            if stack.peek == "{" {
//                stack.pop()
//            }
//            else {
//                return false
//            }
//        }
//    }
//
//    return stack.isEmpty
    
    let dict: [Character: Character] = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    
    var stack = Stack<Character>()
    
    for c in s {
        
        if dict.values.contains(c) {
            stack.push(c)
        }
        else if let value = dict[c] {
            if value == stack.peek {
                stack.pop()
            }
            else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

func isValidParenthesesArray(_ s: String) -> Bool {
        
//    var stack = Array<Character>()
//
//    for c in s {
//
//        if c == "(" || c == "[" || c == "{" {
//            stack.append(c)
//        }
//        else if c == ")" {
//            if stack.last == "(" {
//                stack.removeLast()
//            }
//            else {
//                return false
//            }
//
//        }
//        else if c == "]" {
//            if stack.last == "[" {
//                stack.removeLast()
//            }
//            else {
//                return false
//            }
//        }
//        else if c == "}" {
//            if stack.last == "{" {
//                stack.removeLast()
//            }
//            else {
//                return false
//            }
//        }
//    }
//
//    return stack.isEmpty
    
    let dict: [Character: Character] = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    
    var stack = Array<Character>()
    
    for c in s {
        
        if dict.values.contains(c) {
            stack.append(c)
        }
        else if let value = dict[c] {
            if value == stack.last {
                stack.removeLast()
            }
            else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}
