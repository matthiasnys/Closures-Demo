//: Playground - noun: a place where people can play

import UIKit

let numbers = [5, 10 , 15, 20, 4, 2]

let numbersLargerThen10 = numbers.filter { (input) -> Bool in
    if input > 10 {
        return true
    } else {
        return false
    }
}

let appr2 = numbers.largerThen10()
let appr3 = numbers.myFilter { (input) -> Bool in
    return input > 20
}

let otherArray = numbers.filter({
    $0 > 10
})




extension Array where Element == Int {
    
    func largerThen10() -> [Int] {
        
        var largerThen10Array = [Int]()
        for item in self {
            if item > 10 {
                largerThen10Array.append(item)
            }
        }
        return largerThen10Array
    }
    
    func myFilter(myfilterClosure :((Int) -> Bool) ) -> [Int] {
        
        var largerThen10Array = [Int]()
        for item in self {
            let result = myfilterClosure(item)
            if result {
                largerThen10Array.append(item)
            }
        }
        return largerThen10Array
    }
    
}

