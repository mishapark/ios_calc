//
//  Calculator.swift
//  Week3Project
//
//  Created by Михаил Пак on 25.09.2021.
//

import Foundation

class Calculator {
    var result : Int = 0
    var list : [Character] = []
    var errorMsg: String = ""
    
    func push(s: String) {
        list.append(contentsOf: s)
    }
    
    func calc() -> Int {
        result = Int(String(list[0]))!
        
        for (i, symbol) in list.enumerated() {
           if Int(String(symbol)) == nil {
               switch symbol {
               case "+":
                   result = result + Int(String(list[i+1]))!
               case "-":
                   result = result - Int(String(list[i+1]))!
               case "*":
                   result = result * Int(String(list[i+1]))!
               case "/":
                   result = result / Int(String(list[i+1]))!
               default:
                return result;
               }
           }
        }
        return result
    }
    
    func validNum() -> Bool {
        if list.count > 1 {
            let secondLast = Int(String(list[list.count - 2]))
            
            if secondLast != nil {
                list.removeLast();
                return false
            }
        }
        return true
    }
    
    func validOperator() -> Bool {
        if list.count > 1 {
            let secondLast = Int(String(list[list.count - 2]))
            
            if secondLast == nil {
                list.removeLast();
                return false
            }
        } else if list.count == 1{
            list.removeLast();
            return false
        }
        return true
    }
}
