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
