//
//  ButtonViewController.swift
//  Closures
//
//  Created by Matthias on 30/01/2018.
//  Copyright © 2018 Matthias. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    var completion: ((String) -> Void)?
    var message: String?
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Hallo", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    private func setup() {
        title = "Button ViewController"
        view.backgroundColor = .white
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    @objc private func didTapButton() {
        if let completion = completion {
            completion("Did tap button")
        }
    }
}






class TestUtils {
    
    
    func testThis() {
        
        let numbers = [5, 10 , 15, 20, 4, 2]
        
        let numbersLargerThen10 = numbers.filter { (input) -> Bool in
            if input > 10 {
                return true
            } else {
                return false
            }
        }
        
        let _ = numbers.largerThen10()
        let _ = numbers.myFilter { (input) -> Bool in
            return input > 10
        }
        
        let otherArray = numbers.filter({ $0 > 10 })
        
    }
}

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
